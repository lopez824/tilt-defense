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
    private float speed = 500f;
    private string name;

    public Pillar(Texture2D newTexture, Vector2 newPosition, Color newColor)
    {
        texture = newTexture;
        initialPosition = newPosition;
        position = newPosition;
        pillarColor = newColor;
        setName();
    }

    public void setName()
    {
        if (pillarColor.Equals(Color.Yellow))
        {
            name = "Yellow";
        }
        else if (pillarColor.Equals(Color.Blue))
        {
            name = "Blue";
        }
        else if (pillarColor.Equals(Color.Green))
        {
            name = "Green";
        }
        else if (pillarColor.Equals(Color.Red))
        {
            name = "Red";
        }
    }

    public void checkBounds()
    {
        if (name == "Green" && position.X <= -155)
        {
            position.X = -155;
        }
        else if (name == "Green" && position.X >= 160)
        {
            position.X = 160;
        }

        if (name == "Yellow" && position.X <= -155)
        {
            position.X = -155;
        }
        else if (name == "Yellow" && position.X >= 160)
        {
            position.X = 160;
        }

        if (name == "Blue" && position.X >= 1120)
        {
            position.X = 1120;
        }
        else if (name == "Blue" && position.X <= 800)
        {
            position.X = 800;
        }

        if (name == "Red" && position.X >= 1120)
        {
            position.X = 1120;
        }
        else if (name == "Red" && position.X < 800)
        {
            position.X = 800;
        }
    }

    public void Update(GameTime gameTime, float xAccel)
    {
        checkBounds();

        if (xAccel > 0.4)
        {
            position.X -= speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
        else if(xAccel < -0.4)
        {
            position.X += speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }

        //string tag = "Debuglog";
        //Log.Info(tag, $"Pillar: {name}, X: {position.X}");
    }

    public void Draw(SpriteBatch spriteBatch)
    {
        spriteBatch.Draw(texture, new Rectangle((int)position.X, (int)position.Y, texture.Width, 100), null, pillarColor, 0f, new Vector2(texture.Width / 2, texture.Height / 2), SpriteEffects.None, 0f);
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