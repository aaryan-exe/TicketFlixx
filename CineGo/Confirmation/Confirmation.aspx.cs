using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo
{
	public partial class WebForm3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			MovieNamelbl.Text = "Movie: " + Session["MovieName"];
            Timinglbl.Text="Time: " + Session["Time"];
            Theaterlbl.Text = "Theater: " + Session["TheaterName"];

        }
	}
}