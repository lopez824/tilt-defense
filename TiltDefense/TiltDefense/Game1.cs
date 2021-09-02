﻿using System;
using System.Collections.Generic;
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
        private Timer timer;
        private Score score;
        private List<Character> characters = new List<Character>();
        private List<Pillar> pillars = new List<Pillar>();
        private SpriteFont uiFont;

        private Texture2D mapTexture;
        private Texture2D pillarTexture;
        private Texture2D[] characterTextures = new Texture2D[2];

        private Vector2 spawnPositions;
        private Vector2 pillar1;
        private Vector2 pillar2;
        private Color[] pillarColors = new Color[2];

        private float spawnTime = 0f;
        private bool pillarsCreated = false;

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
        }

        protected override void Initialize()
        { 
            nativeAPI = new NativeAPI();
            nativeAPI.Init();
            timer = new Timer(600);
            score = new Score();

            spawnPositions = new Vector2(GraphicsDevice.Viewport.Width / 2, 0);

            pillar1 = new Vector2(0, GraphicsDevice.Viewport.Height * 0.75f);
            pillar2 = new Vector2(GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height * 0.25f);

            pillarColors[0] = Color.Yellow;
            pillarColors[1] = Color.Blue;
            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);

            uiFont = Content.Load<SpriteFont>("Timer");
            mapTexture = Content.Load<Texture2D>("1LaneMap");
            pillarTexture = Content.Load<Texture2D>("Pillars");
            characterTextures[0] = Content.Load<Texture2D>("Human");
            characterTextures[1] = Content.Load<Texture2D>("Monster");
        }

        protected override void Update(GameTime gameTime)
        {
            if (!pillarsCreated)
            {
                pillars.Add(new Pillar(pillarTexture,pillar1,pillarColors[0]));
                pillars.Add(new Pillar(pillarTexture, pillar2, pillarColors[1]));
                pillarsCreated = true;
            }
            timer.Update(gameTime);
            spawnTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            foreach (Character character in characters)
            {
                character.Update(GraphicsDevice);
            }
            foreach (Pillar pillar in pillars)
            {
                pillar.Update(gameTime, nativeAPI.Acceleration.X);
            }
            if (spawnTime >= 2)
            {
                spawnTime = 0;
                characters.Add(new Character(characterTextures[new Random().Next(0, 2)], spawnPositions));
            }

            for (int i = 0; i < characters.Count; i++)
            {
                if (!characters[i].isVisible)
                {
                    if(characters[i].texture==characterTextures[0])
					{
                        score.ScoreValue++;
					}
                    else if(characters[i].texture == characterTextures[1])
                    {
                        score.ScoreValue--;
                    }
                    characters.RemoveAt(i);
                }
            }

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            _spriteBatch.Begin();
            _spriteBatch.Draw(mapTexture, new Rectangle(0, 0, GraphicsDevice.Viewport.Bounds.Width, GraphicsDevice.Viewport.Bounds.Height), Color.White);
            _spriteBatch.DrawString(uiFont, "" + (int)timer.Time/60 + ":"+(int)timer.Time%60, new Vector2(0,0), Color.Black);
            _spriteBatch.DrawString(uiFont, "Score: " + score.ScoreValue, new Vector2(GraphicsDevice.Viewport.Width-300, 0), Color.Black);
            foreach (Character character in characters)
            {
                character.Draw(_spriteBatch);
            }
            foreach (Pillar pillar in pillars)
            {
                pillar.Draw(_spriteBatch);
            }
            _spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
