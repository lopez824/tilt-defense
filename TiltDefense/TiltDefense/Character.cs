using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace TiltDefense
{
    public class Character
    {
        public Texture2D texture;
        public Vector2 velocity;
        public Vector2 position;
        public Rectangle hitBox;
        public bool isVisible = true;
        private bool hasCollided = false;
        public AnimationManager animationManager;
        public Dictionary<string, Animation> animations;
        public int characterID;

        public bool HasCollided
        {
            get
            {
                return hasCollided;
            }
            set
            {
                hasCollided = value;
            }
        }

        public Character(Texture2D newTexture, Vector2 newPosition, int ID, Dictionary<string, Animation> animations)
        {
            texture = newTexture;
            position = newPosition;
            velocity = new Vector2(0, 2);
            characterID = ID;
            this.animations = animations;
            animationManager = new AnimationManager(animations.First().Value);
        }

        public void Update(GameTime gameTime, GraphicsDevice graphicsDevices)
        {
            position += velocity;
            if (characterID == 0)
            {
                animationManager.Play(animations["HumanWalkingAnim"]);
                if (this.HasCollided)
                {
                    isVisible = false;
                }
            }
            else if (characterID == 1)
            {
                if (!this.HasCollided)
                {
                    animationManager.Play(animations["MonsterWalkingAnim"]);
                }
                else if (this.HasCollided)
                {
                    animationManager.Play(animations["MonsterDeathAnim"]);
                    isVisible = false;
                }
            }
            animationManager.Update(gameTime);
            if (position.Y > graphicsDevices.Viewport.Height)
            {
                isVisible = false;
            }
        }

        public void Draw(SpriteBatch spriteBatch, GameTime gameTime)
        {
            hitBox = new Rectangle((int)position.X, (int)position.Y, 125, 125);
            animationManager.Draw(spriteBatch, hitBox);
        }
    }
}
