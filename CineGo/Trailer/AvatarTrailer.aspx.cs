using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo
{
	public partial class WebForm7 : System.Web.UI.Page
	{
        string time = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SessionLbl.Text = "" + Session["UserID"];
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedTheater = DropDownList1.SelectedValue;
            Session["TheaterName"] = selectedTheater;
        }

        protected void time1_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "09:00 AM";
            Session["Time"] = TimeLabel.Text;
        }

        protected void time2_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "11:00 AM";
            Session["Time"] = TimeLabel.Text;
        }

        protected void time3_Click1(object sender, EventArgs e)
        {
            TimeLabel.Text = "05:00 PM";
            Session["Time"] = TimeLabel.Text;
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            if (Session["TheaterName"] != null && Session["time"] != null)
            {
                Response.Redirect("/SeatBooking/AvatarSeats.aspx");
            }
            else
            {
                WarningLabel.Text = "Please select both Time and theater";
            }
        }

        protected void Date1_Click(object sender, EventArgs e)
        {
            Session["Date"] = "3 March 2025";
            DateLabel.Text = "3 March 2025";
        }

        protected void Date2_Click(object sender, EventArgs e)
        {
            Session["Date"] = "4 March 2025";
            DateLabel.Text = "4 March 2025";
        }

        protected void Date3_Click(object sender, EventArgs e)
        {
            Session["Date"] = "5 March 2025";
            DateLabel.Text = "5 March 2025";
        }
    }
}