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
    public Rectangle collisionBox;
    public string name;

    private Color color;
    private int ID;
    private float offSet = 150f;
    private float speed = 500f;

    public Pillar(Texture2D newTexture, Vector2 newPosition, Color newColor,int pillarID)
    {
        texture = newTexture;
        initialPosition = newPosition;
        position = newPosition;
        ID = pillarID;
        color = newColor;
        setName();
    }

    public void setName()
    {
        if (ID.Equals(1))
        {
            name = "First";
        }
        else if (ID.Equals(2))
        {
            name = "Second";
        }
    }

    public void checkBounds()
    {
        if (name == "Second" && position.X <= -280)
        {
            position.X = -280;
        }
        else if (name == "Second" && position.X >=-115)
        {
            position.X = -115;
        }

        if (name == "First" && position.X >= 775)
        {
            position.X = 775;
        }
        else if (name == "First" && position.X < 615)
        {
            position.X = 615;
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
        if (name == "First")
        {
            hitBox = new Rectangle((int)position.X, (int)position.Y, 500, 225);
            collisionBox= new Rectangle((int)position.X+50, (int)position.Y+100, 500, 225);
            spriteBatch.Draw(texture, hitBox, null, color);
        }
        else if (name == "Second")
        {
            hitBox = new Rectangle((int)position.X, (int)position.Y, 500, 225);
            collisionBox = new Rectangle((int)position.X-50, (int)position.Y+100, 500, 225);
            spriteBatch.Draw(texture, hitBox, null, color);
        }
    }
}