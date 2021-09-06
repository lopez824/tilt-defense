using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace TiltDefense
{
	public class Timer
	{
		private float time;

		public float Time
		{
			get
			{
				return time;
			}
			set
			{
				time = value;
			}
		}

		public Timer(int time)
		{
			this.Time = time;
		}

		public void Update(GameTime gameTime)
		{
			this.Time -= (float)gameTime.ElapsedGameTime.TotalSeconds;
		}
	}

}