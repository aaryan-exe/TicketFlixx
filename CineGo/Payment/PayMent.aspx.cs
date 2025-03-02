using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace CineGo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\Documents\GitHub\CineGo\CineGo\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            SessionLbl.Text = "" + Session["UserID"];
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            // Get values from Session
            string userId = ""+Session["UserID"];
            string movieName = Session["MovieName"] as string;
            string theaterName = Session["TheaterName"] as string;
            string showDate = Session["Date"] as string;  // New: Date from session
            string showTime = Session["Time"] as string;
            decimal price = 500.00m; // Fixed ticket price

            //if (string.IsNullOrEmpty(userId))
            //{
            //    Response.Write("<script>alert('User ID is missing! Please log in again.');</script>");
            //    return;
            //}

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string insertQuery = "INSERT INTO Tickets (UserID, MovieName, TheaterName, ShowDate, ShowTime, Price) VALUES (@UserID, @MovieName, @TheaterName, @ShowDate, @ShowTime, @Price)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    cmd.Parameters.AddWithValue("@MovieName", movieName);
                    cmd.Parameters.AddWithValue("@TheaterName", theaterName);
                    cmd.Parameters.AddWithValue("@ShowDate", showDate);  // Now NVARCHAR
                    cmd.Parameters.AddWithValue("@ShowTime", showTime);  // Now NVARCHAR
                    cmd.Parameters.AddWithValue("@Price", price);

                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect to confirmation page after successful booking
            Response.Redirect("/Confirmation/Confirmation.aspx");
        }
    }
}
