using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.SeatBooking
{
    public partial class Movie1Seats : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\XYZ\\Desktop\\GithubClonee\\CineGo\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }


        //protected void Seat_Click(object sender, EventArgs e)
        //{
        //    for (int i = 1; i <= 50; i++)
        //    {
        //        Button btn = (Button)FindControl("Seat" + i);
        //        if (btn != null && sender == btn)
        //        {
        //            BookSeat(i);
        //            break; // Exit loop once the correct button is found
        //        }
        //    }
        //}

        //private void BookSeat(int seatNumber)
        //{
        //    //    if(Seat1)
        //    //    SqlConnection conn = new SqlConnection(connectionString);
        //    //    conn.Open();

        //    //    SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatNumber = " + seatNumber, conn);
        //    //    cmd.ExecuteNonQuery();
        //    //    conn.Close();
        //}

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\XYZ\\Desktop\\GithubClonee\\CineGo\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatID = 1", conn))
                    {
                        cmd.Parameters.AddWithValue("@SeatID", 1);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
    }
}