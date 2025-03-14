using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace CineGo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Desktop\TicketFlixx\CineGo\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Price"] = (int)Session["SeatsBooked"] * 500;
            SessionLbl.Text = "" + Session["UserID"];
            lblPrice.Text = "" + Session["Price"];
            lblSeats.Text = "" + Session["SeatsBooked"];
            lblTotal.Text=""+ Session["Price"];
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            string userId = ""+Session["UserID"];
            string movieName =""+ Session["MovieName"] as string;
            string theaterName = "" + Session["TheaterName"] as string;
            string showDate = "" + Session["Date"] as string; 
            string showTime = "" + Session["Time"] as string;
            string price = ""+Session["Price"];

            if (Session["UserID"]==null)
            {
                Response.Write("<script>alert('User ID is missing! Please log in again.');</script>");
                return;
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string insertQuery = "INSERT INTO Tickets (UserID, MovieName, TheaterName, ShowDate, ShowTime, Price) VALUES (@UserID, @MovieName, @TheaterName, @ShowDate, @ShowTime, @Price)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    cmd.Parameters.AddWithValue("@MovieName", movieName);
                    cmd.Parameters.AddWithValue("@TheaterName", theaterName);
                    cmd.Parameters.AddWithValue("@ShowDate", showDate);  
                    cmd.Parameters.AddWithValue("@ShowTime", showTime); 
                    cmd.Parameters.AddWithValue("@Price", price);

                    cmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("/Payment/Confirmation.aspx");
        }
    }
}
