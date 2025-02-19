using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.SeatBooking
{
    public partial class Movie1Seats : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\aryan\\Documents\\GitHub\\CineGo\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkBox = sender as CheckBox;
            if (checkBox != null)
            {
                int seatID = int.Parse(checkBox.ID.Replace("CheckBox", "")); // Extract seat number

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd;

                    if (checkBox.Checked)
                    {
                        cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Booked' WHERE SeatID = @SeatID", conn);
                    }
                    else
                    {
                        cmd = new SqlCommand("UPDATE InterstellarSeats SET Status = 'Available' WHERE SeatID = @SeatID", conn);
                    }

                    cmd.Parameters.AddWithValue("@SeatID", seatID);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Seats confirmed!');</script>");
        }
    }
}
