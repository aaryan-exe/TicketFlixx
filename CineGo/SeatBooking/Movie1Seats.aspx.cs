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
            if (!IsPostBack)
            {
                MarkBookedSeats();
            }
            TimeLabel.Text = "Time: " + Session["time"];
            TheaterLabel.Text = "Theater: " + Session["theater"];
            SessionLbl.Text = "" + Session["UserID"];
        }

        private void MarkBookedSeats()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT SeatNumber FROM InterstellarSeats WHERE Status = 'Booked'", conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        string seatNumber = reader["SeatNumber"].ToString();
                        Button seatButton = FindControl("Seat" + seatNumber) as Button;
                        if (seatButton != null)
                        {
                            seatButton.CssClass += " full";
                            seatButton.Enabled = false;
                        }
                        else
                        {
                            // Debugging statement
                            System.Diagnostics.Debug.WriteLine("Button not found for SeatNumber: " + seatNumber);
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
                string seatNumber = clickedButton.Text;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked', UserID = @UserID WHERE SeatNumber = @SeatNumber", conn))
                    {
                        cmd.Parameters.AddWithValue("@SeatNumber", seatNumber);
                        cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
                        cmd.ExecuteNonQuery();
                    }
                }
                clickedButton.CssClass += " full";
                clickedButton.Enabled = false;
            }
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Payment/PaYment.aspx");
        }
    }
}