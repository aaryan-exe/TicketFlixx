using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.SeatBooking
{
    public partial class Movie1Seats : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Documents\GitHub\TicketFlixx\CineGo\App_Data\Database1.mdf;Integrated Security=True";

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
                using (SqlCommand cmd = new SqlCommand("SELECT SeatID FROM InterstellarSeats WHERE Status = 'Booked'", conn))
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
                    }
                }
            }
        }

        protected void Seat_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            int seatID = int.Parse(clickedButton.Text);

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatID = @SeatID", conn))
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