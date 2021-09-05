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
    public Vector2 initialPosition;
    public Rectangle hitBox;
    public string name;

    private Color color;
    private float offSet = 150f;
    private float speed = 500f;

    public Pillar(Texture2D newTexture, Vector2 newPosition, Color newColor)
    {
        texture = newTexture;
        initialPosition = newPosition;
        position = newPosition;
        color = newColor;
        setName();
    }

    public void setName()
    {
        if (color.Equals(Color.Yellow))
        {
            name = "Yellow";
        }
        else if (color.Equals(Color.Blue))
        {
            name = "Blue";
        }
        else if (color.Equals(Color.Green))
        {
            name = "Green";
        }
        else if (color.Equals(Color.Red))
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

        if (xAccel > 0.4)
        {
            position.X -= speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
        else if(xAccel < -0.4)
        {
            position.X += speed * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }

        checkBounds();

        //string tag = "Debuglog";
        //Log.Info(tag, $"Pillar: {name}, X: {position.X}");
    }

    public void Draw(SpriteBatch spriteBatch)
    {
        
        // only draw the red and yellow pillars, offSets is for adjusting the collider
        if (name == "Red")
        {
            hitBox = new Rectangle((int)position.X, (int)position.Y, texture.Width, 100);
            spriteBatch.Draw(texture, hitBox, null, color, 0f, new Vector2((texture.Width / 2) - offSet, texture.Height / 2), SpriteEffects.None, 0f);
        }
        else if (name == "Yellow")
        {
            hitBox = new Rectangle((int)position.X - 320, (int)position.Y, texture.Width, 100);
            spriteBatch.Draw(texture, hitBox, null, color, 0f, new Vector2((texture.Width / 2) - offSet - 20, texture.Height / 2), SpriteEffects.None, 0f);
        }
    }
}