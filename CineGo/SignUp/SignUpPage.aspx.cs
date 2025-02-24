using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace CineGo
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\aryan\\Documents\\GitHub\\CineGo\\CineGo\\App_Data\\Database1.mdf;Integrated Security=True";
            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string password = PasswordTextBox.Text;
            string mobile = MobileTextBox.Text;


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                    conn.Open();

                    string checkQuery = "SELECT COUNT(*) FROM userInfo WHERE email = @email OR mobileNumber = @mobile";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                    {
                        checkCmd.Parameters.AddWithValue("@Email", email);
                        checkCmd.Parameters.AddWithValue("@Mobile", mobile);

                        int count = (int)checkCmd.ExecuteScalar();

                        if (count > 0)
                        {
                            OutputLabel.Text = "*Username or mobile number already exists.";
                            return;
                        }
                    }

                    string query1 = "INSERT INTO userInfo(FName, Email, mobileNumber, UserPassword) VALUES (@name, @email, @mobile, @password)";

                    using (SqlCommand cmd = new SqlCommand(query1, conn))
                    {

                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Mobile", mobile);
                        cmd.Parameters.AddWithValue("@Password", password);

                        cmd.ExecuteNonQuery();
                    }

                }

                Session["uemail"] = EmailTextBox.Text;
                Response.Redirect("\\HomePage\\HomePage.aspx");
                OutputLabel.Text = "User registered successfully!";
            }
        }
    }