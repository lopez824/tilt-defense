﻿using Android.App;
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
	class Score
	{
		int scoreValue;

		public int ScoreValue
		{
			get
			{
				return scoreValue;
			}
			set
			{
				scoreValue = value;
			}
		}

		public Score()
		{
			this.ScoreValue = 0;
		}
	}
}