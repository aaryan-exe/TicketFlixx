using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace CineGo.SeatBooking
{
	public partial class BatmanSeatSelect : System.Web.UI.Page
	{
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Documents\GitHub\CineGo\CineGo\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            TimeLabel.Text = "Time: " + Session["time"];
            TheaterLabel.Text = "Theater: " + Session["theater"];
        }

        protected void Seat_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            if (clickedButton != null)
            {
                int seatID = int.Parse(clickedButton.Text); // Assume button text is seat number

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatID = " + seatID, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }

                clickedButton.CssClass += " full"; // Change appearance
                clickedButton.Enabled = false; // Disable after clicking
            }
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Payment/PaYment.aspx");
        }
    }
}
