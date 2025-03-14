using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CineGo
{
	public partial class WebForm10 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\aryan\\Desktop\\TicketFlixx\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";
            string email = emailTextBox.Text;
            string password = passwordTextBox.Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = "SELECT UserID FROM userInfo WHERE Email = @Email AND UserPassword = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);


                    object result = cmd.ExecuteScalar();

                    if (result != null) 
                    {
                        int userID = Convert.ToInt32(result);
                        Session["UserID"] = userID; 
                        Session["uemail"] = email;

                        OutputLabel.Text = "Login successful!";
                        Response.Redirect("/HomePage/HomePage.aspx");
                        Session["UserID"] = userID;
                        Response.Write("<script>alert('UserID stored: " + userID + "');</script>");

                    }
                    else
                    {
                        OutputLabel.Text = "*Invalid username or password.";
                    }
                }
            }
        }
    }
}
