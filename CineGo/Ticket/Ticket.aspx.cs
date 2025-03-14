using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace CineGo
{
    public partial class WebForm3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                
                string script = "alert('User ID is missing! Please log in again.'); window.location='/Login/LoginPage.aspx';";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                return;
            }

            if (!IsPostBack)
            {
                LoadTickets();
            }
        }

        private void LoadTickets()
        {
           
            if (Session["UserID"] == null)
            {
                Response.Redirect("/Login/LoginPage.aspx");
                return;
            }

            int userID = Convert.ToInt32(Session["UserID"]);
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\aryan\\Desktop\\TicketFlixx\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT TicketID, MovieName, TheaterName, ShowDate, ShowTime, Price FROM Tickets WHERE UserID = @UserID";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserID", userID);
                    conn.Open();

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    rptTickets.DataSource = dt;
                    rptTickets.DataBind();
                }
            }
        }
    }
}