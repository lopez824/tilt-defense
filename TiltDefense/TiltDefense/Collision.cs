using Microsoft.Xna.Framework;

public static class Collision
{
    // checks if two rectangles meet the requirements for registering a collision
    public static bool Check(Rectangle a, Rectangle b)
    {
        return a.Left < b.Right && a.Right > b.Left && a.Top < b.Bottom && a.Bottom > b.Top;
    }
}