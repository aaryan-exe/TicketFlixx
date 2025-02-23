using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.Trailer
{
    public partial class Batman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void time1_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "09:00 AM";
            Session["time"] = TimeLabel.Text;
        }

        protected void time2_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "11:00 AM";
            Session["time"] = TimeLabel.Text;
        }

        protected void time3_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "05:00 PM";
            Session["time"] = TimeLabel.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TheaterLabel.Text = "IMAX";
            Session["theater"] = TheaterLabel.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TheaterLabel.Text = "PVR";
            Session["theater"] = TheaterLabel.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TheaterLabel.Text = "INOX";
            Session["theater"] = TheaterLabel.Text;
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            if (Session["theater"] != null && Session["time"] != null)
            {
                Response.Redirect("/SeatBooking/BatmanSeatSelect.aspx");
            }
            else
            {
                WarningLabel.Text = "Please select both Time and theater";
            }
        }
    }
}