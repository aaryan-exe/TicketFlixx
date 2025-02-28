using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.SeatBooking
{
    public partial class Movie1Seats : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Documents\GitHub\CineGo\CineGo\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            MarkBookedSeats();
            TimeLabel.Text = "Time: " + Session["time"];
            TheaterLabel.Text = "Theater: " + Session["theater"];
            SessionLbl.Text = "" + Session["UserID"];
        }

        private void MarkBookedSeats()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT SeatID FROM InterstellarSeats WHERE Status = 'Booked'", conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        int seatID = reader.GetInt32(0);
                        Button seatButton = FindControl("Seat" + seatID) as Button;
                        if (seatButton != null)
                        {
                            seatButton.CssClass += " full";
                            seatButton.Enabled = false;
                        }
                    }
                }
            }
        }

        protected void Seat_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            if (clickedButton != null)
            {
                int seatID;
                if (int.TryParse(clickedButton.Text, out seatID))
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatID = @SeatID", conn))
                        {
                            cmd.Parameters.AddWithValue("@SeatID", seatID);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    clickedButton.CssClass += " selected";
                    clickedButton.Enabled = false;
                }
            }
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Payment/PaYment.aspx");
        }
    }
}