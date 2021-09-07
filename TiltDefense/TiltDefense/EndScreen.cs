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
    class EndScreen : GameScreen
    {
        private new Game1 Game => (Game1)base.Game;
        public EndScreen(Game1 game) : base(game) { }

        private Texture2D background;
        private SpriteFont uiFont;

        private Vector2 replayButtonPosition;
        private Vector2 exitButtonPosition;

        public override void LoadContent()
        {
            base.LoadContent();       
            background = Game.Content.Load<Texture2D>("GameOverBg");
            uiFont = Game.Content.Load<SpriteFont>("SecondUIFont");
            replayButtonPosition = new Vector2(GraphicsDevice.Viewport.Width / 2 - 255, GraphicsDevice.Viewport.Height / 2 + 250);
            exitButtonPosition = new Vector2(GraphicsDevice.Viewport.Width / 2 - 155, GraphicsDevice.Viewport.Height / 2 + 450);
        }
        public override void Update(GameTime gameTime)
        {
            TouchCollection tc = TouchPanel.GetState();
            foreach (TouchLocation tl in tc)
            {
                if (tl.Position.X > replayButtonPosition.X && tl.Position.X < replayButtonPosition.X + uiFont.Texture.Bounds.Width &&
                    tl.Position.Y > replayButtonPosition.Y && tl.Position.Y < replayButtonPosition.Y + uiFont.Texture.Bounds.Height)
                {
                    Game.LoadGameplayScreen();
                }
                if (tl.Position.X > exitButtonPosition.X && tl.Position.X < exitButtonPosition.X + uiFont.Texture.Bounds.Width
                    && tl.Position.Y > exitButtonPosition.Y && tl.Position.Y < exitButtonPosition.Y + uiFont.Texture.Bounds.Height)

                {
                    Android.OS.Process.KillProcess(Android.OS.Process.MyPid());
                }
            }
        }
        public override void Draw(GameTime gameTime)
        {
            Game._spriteBatch.Begin();
            Game._spriteBatch.Draw(background, new Rectangle(0, 0, GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Bounds.Height), Color.White);
            Game._spriteBatch.DrawString(uiFont, "Score:  " + Game.score , new Vector2(GraphicsDevice.Viewport.Width / 2 - 300, GraphicsDevice.Viewport.Height / 2 - 400), Color.GreenYellow);
            Game._spriteBatch.DrawString(uiFont, "REPLAY", replayButtonPosition, Color.GreenYellow);
            Game._spriteBatch.DrawString(uiFont, "EXIT", exitButtonPosition, Color.GreenYellow);
            Game._spriteBatch.End();
        }
    }
}