using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Text;
using Android.Util;
public class Pillar
{
    public Texture2D texture;
    public Vector2 position;
    public Color pillarColor;
    public Vector2 initialPosition;
    private float speed = 300f;

    public Pillar(Texture2D newTexture, Vector2 newPosition, Color newColor)
    {
        texture = newTexture;
        initialPosition = newPosition;
        position = newPosition;
        pillarColor = newColor;
    }

    public void Update(GameTime gameTime, float xAccel)
    {
        if(xAccel > 0.4)
        {
            position = initialPosition;
            initialPosition.X -= speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
        else if(xAccel < -0.4)
        {
            position = initialPosition;
            initialPosition.X += speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
        else if(xAccel < 0.1 || xAccel > -0.1)
        {
            initialPosition = position;
        }
    }

    public void Draw(SpriteBatch spriteBatch)
    {
        spriteBatch.Draw(texture, new Rectangle((int)initialPosition.X, (int)initialPosition.Y, texture.Width, 100), null, pillarColor, 0f, new Vector2(texture.Width / 2, texture.Height / 2), SpriteEffects.None, 0f);
    }
}
/*  Input Example
if (nativeAPI.Acceleration.Z > 0.3)
    pikaPosition.Y -= pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

if (nativeAPI.Acceleration.Z < -0.25)
    pikaPosition.Y += pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

if (nativeAPI.Acceleration.X > 0.4)
    pikaPosition.X -= pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;

if (nativeAPI.Acceleration.X < -0.4)
    pikaPosition.X += pikaSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
*/