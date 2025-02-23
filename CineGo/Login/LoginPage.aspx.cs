using System;
using System.Data.SqlClient;

namespace CineGo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\XYZ\\Desktop\\GithubClonee\\CineGo\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";
            string email = emailTextBox.Text;
            string password = passwordTextBox.Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = "SELECT COUNT(*) FROM userInfo WHERE Email = @Email AND UserPassword = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn)) 
                {
                    // Add parameters
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    // Execute the query
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        OutputLabel.Text = "Login successful!";
                        Session["uemail"] = emailTextBox.Text;
                        Response.Redirect("/HomePage/HomePage.aspx");
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
