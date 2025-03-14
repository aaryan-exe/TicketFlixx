using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CineGo
{
	public partial class WebForm8 : System.Web.UI.Page
	{
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Documents\GitHub\TicketFlixx\CineGo\App_Data\Database1.mdf;Integrated Security=True";
        int count = 0;
        int price = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            MarkBookedSeats();
            TimeLabel.Text = "Time: " + Session["time"];
            TheaterLabel.Text = "Theater: " + Session["TheaterName"];
        }

        private void MarkBookedSeats()
        {
            ContentPlaceHolder mainContent = this.Master.FindControl("MainContent") as ContentPlaceHolder;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT SeatID FROM Avatar WHERE Status = 'Booked'", conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        int seatID = reader.GetInt32(0);
                        Button seatButton = mainContent.FindControl("Seat" + seatID) as Button;
                        if (seatButton != null)
                        {
                            seatButton.CssClass = "seat-button full";
                            seatButton.Enabled = false;
                        }
                        else
                        {
                            Response.Write("Could not find Seat" + seatID + "<br/>");
                        }
                    }
                }
            }
        }

        protected void Seat_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            if (clickedButton == null) return;

            int seatID = int.Parse(clickedButton.Text);

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("UPDATE Avatar SET Status = 'Booked' WHERE SeatID = @SeatID", conn))
                {
                    cmd.Parameters.AddWithValue("@SeatID", seatID);
                    cmd.ExecuteNonQuery();
                }
            }

            clickedButton.CssClass = "seat-button selected";
            clickedButton.Enabled = false;

            if (Session["SeatsBooked"] == null)
            {
                Session["SeatsBooked"] = 1;
            }
            else
            {
                Session["SeatsBooked"] = (int)Session["SeatsBooked"] + 1;
            }


            MarkBookedSeats();
        }


        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Payment/PaYment.aspx");
        }
    }
}












