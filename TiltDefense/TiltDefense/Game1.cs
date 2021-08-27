using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Xamarin.Essentials;
using Android.Util;     // used to access logcat (Android output)

namespace TiltDefense
{
    public class Game1 : Game
    {
        private GraphicsDeviceManager _graphics;
        private NativeAPI nativeAPI;
        private SpriteBatch _spriteBatch;
        private Texture2D pikaTexture;
        private Vector2 pikaPosition;
        private float pikaSpeed;

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
        }

        protected override void Initialize()
        {
            // TODO: Add your initialization logic here
            nativeAPI = new NativeAPI();
            nativeAPI.Init();
            pikaPosition = new Vector2(_graphics.GraphicsDevice.Viewport.Width / 2, _graphics.GraphicsDevice.Viewport.Width / 2);
            pikaSpeed = 300f;
            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);

            // TODO: use this.Content to load your game content here
            pikaTexture = Content.Load<Texture2D>("pikachu");
        }

        protected override void Update(GameTime gameTime)
        {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            // TODO: Add your update logic here

            var kstate = Keyboard.GetState();

            if (nativeAPI.Acceleration.Z > 0.3)
                pikaPosition.Y -= pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

            if (nativeAPI.Acceleration.Z < -0.25)
                pikaPosition.Y += pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

            if (nativeAPI.Acceleration.X > 0.4)
                pikaPosition.X -= pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

            if (nativeAPI.Acceleration.X < -0.4)
                pikaPosition.X += pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            // TODO: Add your drawing code here
            _spriteBatch.Begin();
            _spriteBatch.Draw(
                pikaTexture,
                pikaPosition,
                null,
                Color.White,
                0f,
                new Vector2(pikaTexture.Width / 2, pikaTexture.Height / 2),
                Vector2.One,
                SpriteEffects.None,
                0f
            );
            _spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
