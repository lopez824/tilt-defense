using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MonoGame.Extended.Screens;
using MonoGame.Extended.Screens.Transitions;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Media;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Input.Touch;

namespace TiltDefense
{
    class TitleScreen : GameScreen
    {
        private new Game1 Game => (Game1)base.Game;
        public TitleScreen(Game1 game) : base(game) { }

        private Texture2D background;

        private Texture2D startButton;
        private Vector2 startButtonPosition;

        private Texture2D quitButton;
        private Vector2 quitButtonPosition;


        public override void LoadContent()
        {
            base.LoadContent();

            background = Game.Content.Load<Texture2D>("TitleScreenBg");

            startButton = Game.Content.Load<Texture2D>("StartButton");
            startButtonPosition = new Vector2(Game.GraphicsDevice.Viewport.Width/ 2-450, Game.GraphicsDevice.Viewport.Height / 2+300);
            
            quitButton = Game.Content.Load<Texture2D>("QuitButton");
            quitButtonPosition = new Vector2(Game.GraphicsDevice.Viewport.Width / 2 + 170, Game.GraphicsDevice.Viewport.Height / 2 + 300);
        }

        public override void Update(GameTime gameTime)
        {
            TouchCollection tc = TouchPanel.GetState();
            foreach (TouchLocation tl in tc)
            {
                if (tl.Position.X>startButtonPosition.X && tl.Position.X<startButtonPosition.X+startButton.Width && 
                    tl.Position.Y>startButtonPosition.Y&&tl.Position.Y<startButtonPosition.Y+startButton.Height)
                {
                    Log.Info("debugLog", $"Start Button Touched");
                }
                else
                {
                    Log.Info("debugLog", $"No");
                }
            }
        }

        public override void Draw(GameTime gameTime)
        {
            Game._spriteBatch.Begin();
            Game._spriteBatch.Draw(background, new Rectangle(0, 0, GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Bounds.Height), Color.White);
            Game._spriteBatch.Draw(startButton, startButtonPosition, Color.White);
            Game._spriteBatch.Draw(quitButton, quitButtonPosition, Color.White);

            Game._spriteBatch.End();
        }
    }
}