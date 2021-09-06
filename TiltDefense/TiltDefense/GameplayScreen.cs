using System;
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

namespace TiltDefense
{
    class GameplayScreen : GameScreen
    {

        private new Game1 Game => (Game1)base.Game;
        private NativeAPI nativeAPI;
        public GameplayScreen(Game1 game) : base(game) { }

        private Texture2D mapTexture;
        private Texture2D pillarTexture;
        private Texture2D[] characterTextures = new Texture2D[2];

        private Vector2[] spawnPositions = new Vector2[3];
        private Vector2[] pillarPositions = new Vector2[2];
        private Color[] pillarColors = new Color[2];

        private List<Character> characters = new List<Character>();
        private List<Pillar> pillars = new List<Pillar>();

        private float spawnTime = 0f;
        private bool pillarsCreated = false;
        private int test1 = 0;
        private int test2 = 0;

        public override void LoadContent()
        {
            nativeAPI = new NativeAPI();
            nativeAPI.Init();

            spawnPositions[0] = new Vector2(GraphicsDevice.Viewport.Width / 4 - 25, 0);
            spawnPositions[1] = new Vector2(GraphicsDevice.Viewport.Width / 2, 0);
            spawnPositions[2] = new Vector2((3 * (GraphicsDevice.Viewport.Width / 4)) + 25, 0);

            pillarPositions[0] = new Vector2(0, GraphicsDevice.Viewport.Height * 0.8f);
            //pillarPositions[1] = new Vector2(GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height * 0.6f);
            //pillarPositions[2] = new Vector2(0, GraphicsDevice.Viewport.Height * 0.4f);
            pillarPositions[1] = new Vector2(GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height * 0.2f);

            pillarColors[0] = Color.Yellow;
            //pillarColors[1] = Color.Blue;
            //pillarColors[2] = Color.Green;
            pillarColors[1] = Color.Red;

            mapTexture = Content.Load<Texture2D>("Map1");
            pillarTexture = Content.Load<Texture2D>("Pillars");
            characterTextures[0] = Content.Load<Texture2D>("Human");
            characterTextures[1] = Content.Load<Texture2D>("Monster");
        }

        public override void Update(GameTime gameTime)
        {
            if (!pillarsCreated)
            {
                for (int i = 0; i < pillarPositions.Length; i++)
                {
                    pillars.Add(new Pillar(pillarTexture, pillarPositions[i], pillarColors[i]));
                }
                pillarsCreated = true;
            }

            spawnTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            foreach (Character character in characters)
            {
                character.Update(GraphicsDevice);
            }

            foreach (Pillar pillar in pillars)
            {
                pillar.Update(gameTime, nativeAPI.Acceleration.X);

                // Collision Detection
                for (int i = 0; i < characters.Count; i++)
                {
                    if (Collision.Check(characters[i].hitBox, pillar.hitBox))
                    {
                        // TODO: Collision code

                        if (pillar.name == "Red")
                        {
                            test1++;
                            Log.Info("debuglog", $"HIT RED {test1} times");
                        }
                        else if (pillar.name == "Yellow")
                        {
                            test2++;
                            Log.Info("debuglog", $"HIT YELLOW {test2} times");
                        }
                    }
                }
            }
            if (spawnTime >= 2)
            {
                spawnTime = 0;
                for (int i = 0; i < 3; i++)
                {
                    characters.Add(new Character(characterTextures[new Random().Next(0, 2)], spawnPositions[i]));
                }
            }

            for (int i = 0; i < characters.Count; i++)
            {
                if (!characters[i].isVisible)
                {
                    characters.RemoveAt(i);
                }
            }

        }

        public override void Draw(GameTime gameTime)
        {
            Game._spriteBatch.Begin();
            Game. _spriteBatch.Draw(mapTexture, new Rectangle(0, 0, GraphicsDevice.Viewport.Bounds.Width, GraphicsDevice.Viewport.Bounds.Height), Color.White);
            foreach (Character character in characters)
            {
                character.Draw(Game._spriteBatch);
            }
            foreach (Pillar pillar in pillars)
            {
                pillar.Draw(Game._spriteBatch);
            }
            Game._spriteBatch.End();
        }
    }
}