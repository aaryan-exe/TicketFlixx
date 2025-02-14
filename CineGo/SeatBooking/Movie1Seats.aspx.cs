using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.SeatBooking
{
	public partial class Movie1Seats : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session["movien"] = "Interstellar";
			MovieSeatName.Text = Session["movien"].ToString();

        }
	}
}