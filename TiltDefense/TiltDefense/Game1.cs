using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Input.Touch;
using Xamarin.Essentials;
using Android.Util;     // used to access logcat (Android output)
using MonoGame.Extended.Screens;
using MonoGame.Extended.Screens.Transitions;
using Microsoft.Xna.Framework.Media;

namespace TiltDefense
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        public SpriteBatch _spriteBatch;
        private readonly ScreenManager _screenManager;

        private Song backgroundMusic;


        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            _screenManager = new ScreenManager();
            Content.RootDirectory = "Content";
            Components.Add(_screenManager);
            IsMouseVisible = true;
        }

        protected override void Initialize()
        {
            LoadTitleScreen();
            base.Initialize();
        }

        private void LoadTitleScreen()
        {
            _screenManager.LoadScreen(new TitleScreen(this), new FadeTransition(GraphicsDevice, Color.Black));
        }

        public void LoadGameplayScreen()
        {
            _screenManager.LoadScreen(new GameplayScreen(this), new FadeTransition(GraphicsDevice, Color.Black));
        }
        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            backgroundMusic = Content.Load<Song>("BackgroundMusic");
            MediaPlayer.IsRepeating = true;
            MediaPlayer.Play(backgroundMusic);
        }

        protected override void Update(GameTime gameTime)
        {
            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);
            base.Draw(gameTime);
        }
    }
}
