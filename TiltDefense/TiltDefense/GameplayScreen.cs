using System;
using System.IO;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Input.Touch;
using Xamarin.Essentials;
using Android.Util;
using MonoGame.Extended.Screens;
using MonoGame.Extended.Screens.Transitions;
using Microsoft.Xna.Framework.Media;
using Microsoft.Xna.Framework.Audio;

namespace TiltDefense
{
    class GameplayScreen : GameScreen
    {

        private new Game1 Game => (Game1)base.Game;
        private NativeAPI nativeAPI;
        private Timer timer;
        private Score score;
        public GameplayScreen(Game1 game) : base(game) { }

        private SpriteFont uiFont;
        private Texture2D mapTexture;
        private Texture2D church;
        private Texture2D tree1;
        private Texture2D tree2;
        private Texture2D house1;
        private Texture2D house2;
        private Texture2D house3;
        private Texture2D train;
        private Texture2D[] characterTextures = new Texture2D[2];

        private SoundEffect hitHuman;
        private SoundEffect hitEnemy;
        private SoundEffect humanPasses;
        private SoundEffect monsterPasses;

        private Vector2[] spawnPositions = new Vector2[2];
        private Vector2[] pillarPositions = new Vector2[2];

        private List<Character> characters = new List<Character>();
        private List<Pillar> pillars = new List<Pillar>();
        private Dictionary<string, Animation> animations;

        private float spawnTime = 0f;
        private bool pillarsCreated = false;

        public override void LoadContent()
        {
            nativeAPI = new NativeAPI();
            nativeAPI.Init();
            timer = new Timer(600);
            score = new Score();

            spawnPositions[0] = new Vector2(GraphicsDevice.Viewport.Width / 4 - 45, 0);
            spawnPositions[1] = new Vector2((3 * (GraphicsDevice.Viewport.Width / 4)) - 45, 0);

            pillarPositions[0] = new Vector2(GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height * 0.175f);
            pillarPositions[1] = new Vector2(-600, GraphicsDevice.Viewport.Height * 0.775f);

            uiFont = Content.Load<SpriteFont>("Timer");
            mapTexture = Content.Load<Texture2D>("BackgroundMap");
            church = Content.Load<Texture2D>("Church");
            tree1 = Content.Load<Texture2D>("Tree1");
            tree2 = Content.Load<Texture2D>("Tree2");
            house1 = Content.Load<Texture2D>("House1");
            house2 = Content.Load<Texture2D>("House2");
            house3 = Content.Load<Texture2D>("House3");
            train = Content.Load<Texture2D>("Train");
            characterTextures[0] = Content.Load<Texture2D>("Human");
            characterTextures[1] = Content.Load<Texture2D>("Monster");

            animations = new Dictionary<string, Animation>(){ { "HumanWalkingAnim",new Animation(Game.Content.Load<Texture2D>("HumanWalkingAnim"),13)},
                                                              { "MonsterWalkingAnim",new Animation(Game.Content.Load<Texture2D>("MonsterWalkingAnim"),13)},
                                                              { "MonsterDeathAnim",new Animation(Game.Content.Load<Texture2D>("MonsterDeathAnim"),20)}};

            hitEnemy = Content.Load<SoundEffect>("Hit Enemy");
            hitHuman = Content.Load<SoundEffect>("Hit Human");
            humanPasses = Content.Load<SoundEffect>("Human Passes");
            monsterPasses = Content.Load<SoundEffect>("Monster Passes");

        }
        public override void Update(GameTime gameTime)
        {
            if (!pillarsCreated)
            {
                int pillarID = 0;
                for (int i = 0; i < pillarPositions.Length; i++)
                {
                    pillarID++;
                    pillars.Add(new Pillar(train, pillarPositions[i], Color.White, pillarID));
                }
                pillarsCreated = true;
            }
            timer.Update(gameTime);
            spawnTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            foreach (Character character in characters)
            {
                character.Update(gameTime, GraphicsDevice);
            }

            foreach (Pillar pillar in pillars)
            {
                pillar.Update(gameTime, nativeAPI.Acceleration.X);

                // Collision Detection
                for (int i = 0; i < characters.Count; i++)
                {
                    if (Collision.Check(characters[i].hitBox, pillar.collisionBox))
                    {
                        characters[i].HasCollided = true;
                        //if (pillar.name == "First")
                        //{
                        //    test1++;
                        //    Log.Info("debuglog", $"HIT First {test1} times");
                        //}
                        //else if (pillar.name == "Second")
                        //{
                        //    test2++;
                        //    Log.Info("debuglog", $"HIT Second {test2} times");
                        //}
                    }
                }
            }
            if (spawnTime >= 2)
            {
                spawnTime = 0;
                for (int i = 0; i < spawnPositions.Length; i++)
                {
                    int randomSprite = new Random().Next(0, 2);
                    characters.Add(new Character(characterTextures[randomSprite], spawnPositions[i], randomSprite, animations));
                }
            }

            for (int i = 0; i < characters.Count; i++)
            {
                if (!characters[i].isVisible && !characters[i].HasCollided)
                {
                    if (characters[i].texture == characterTextures[0])
                    {
                        humanPasses.Play(1, 0, 0);
                        score.ScoreValue++;
                    }
                    else if (characters[i].texture == characterTextures[1])
                    {
                        monsterPasses.Play(1, 0, 0);
                        score.ScoreValue--;
                    }
                    characters.RemoveAt(i);
                }
                else if (!characters[i].isVisible && characters[i].HasCollided)
                {
                    if (characters[i].texture == characterTextures[0])
                    {
                        hitHuman.Play(1, 0, 0);
                        characters.RemoveAt(i);
                    }
                    else if (characters[i].texture == characterTextures[1])
                    {
                        hitEnemy.Play(1, 0, 0);
                        //Make enemy dissapear after death animation through some logic
                        characters.RemoveAt(i);
                    }
                }
            }
        }

        public override void Draw(GameTime gameTime)
        {
            Game._spriteBatch.Begin();
            Game._spriteBatch.Draw(mapTexture, new Rectangle(0, 0, GraphicsDevice.Viewport.Bounds.Width, GraphicsDevice.Viewport.Bounds.Height), Color.White);

            foreach (Character character in characters)
            {
                character.Draw(Game._spriteBatch, gameTime);
            }

            foreach (Pillar pillar in pillars)
            {
                pillar.Draw(Game._spriteBatch);
            }

            DrawScene();

            Game._spriteBatch.DrawString(uiFont, "" + (int)timer.Time / 60 + ":" + (int)timer.Time % 60, new Vector2(GraphicsDevice.Viewport.Width / 2 - 100, 150), Color.Black);
            Game._spriteBatch.DrawString(uiFont, "" + score.ScoreValue, new Vector2(GraphicsDevice.Viewport.Width / 2 - 20, 0), Color.Black);

            Game._spriteBatch.End();
        }

        private void DrawScene()
        {
            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 730, 175, 175), Color.White);
            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 730, 175, 175), Color.White);
            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 730, 175, 175), Color.White);

            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 600, 175, 175), Color.White);
            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 600, 175, 175), Color.White);
            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 600, 175, 175), Color.White);

            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 470, 175, 175), Color.White);
            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 470, 175, 175), Color.White);
            Game._spriteBatch.Draw(house3, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 470, 175, 175), Color.White);

            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 340, 175, 175), Color.White);
            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 340, 175, 175), Color.White);
            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 340, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 210, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 210, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 210, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 - 150, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 - 150, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 - 150, 175, 175), Color.White);

            Game._spriteBatch.Draw(church, new Rectangle(GraphicsDevice.Viewport.Width / 2 + 10, GraphicsDevice.Viewport.Height / 2, 350, 300), null, Color.White, 0f, new Vector2(church.Width / 2, church.Height / 2), SpriteEffects.None, 0f);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 100, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 100, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 100, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 230, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 230, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 230, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 360, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 360, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 360, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 490, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 490, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 490, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 620, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 620, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 620, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 750, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 750, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 750, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 880, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 880, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 880, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(-70, -60, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 40, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 140, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 240, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 340, 300, 300), Color.White);

            Game._spriteBatch.Draw(house1, new Rectangle(-70, GraphicsDevice.Viewport.Height / 4 - 150, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 500, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 600, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 700, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 800, 300, 300), Color.White);

            Game._spriteBatch.Draw(house2, new Rectangle(-70, GraphicsDevice.Viewport.Height / 2 - 150, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 1100, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 1200, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 1300, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 1400, 300, 300), Color.White);

            Game._spriteBatch.Draw(house3, new Rectangle(-70, 3 * (GraphicsDevice.Viewport.Height / 4) - 150, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 1600, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 1700, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 1800, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(-70, 1900, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(-80, 2000, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(50, 2070, 200, 200), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(135, 2070, 200, 200), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(220, 2070, 200, 200), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 + 60, 2070, 200, 200), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 + 145, 2070, 200, 200), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width / 2 + 235, 2070, 200, 200), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 175, GraphicsDevice.Viewport.Height / 2 + 970, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 90, GraphicsDevice.Viewport.Height / 2 + 970, 175, 175), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width / 2 - 5, GraphicsDevice.Viewport.Height / 2 + 970, 175, 175), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, -60, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 40, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 140, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 240, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 340, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 440, 300, 300), Color.White);

            Game._spriteBatch.Draw(house3, new Rectangle(GraphicsDevice.Viewport.Width - 200, GraphicsDevice.Viewport.Height / 4, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 640, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 740, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 840, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 940, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 1040, 300, 300), Color.White);

            Game._spriteBatch.Draw(house1, new Rectangle(GraphicsDevice.Viewport.Width - 200, GraphicsDevice.Viewport.Height / 2, 300, 300), Color.White);

            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 1240, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 1340, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 1440, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 1540, 300, 300), Color.White);

            Game._spriteBatch.Draw(house2, new Rectangle(GraphicsDevice.Viewport.Width - 200, 3 * (GraphicsDevice.Viewport.Height / 4), 300, 300), Color.White);

            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 1740, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree2, new Rectangle(GraphicsDevice.Viewport.Width - 220, 1840, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 1940, 300, 300), Color.White);
            Game._spriteBatch.Draw(tree1, new Rectangle(GraphicsDevice.Viewport.Width - 200, 2040, 300, 300), Color.White);
        }
    }
}