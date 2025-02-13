using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CineGo.HomePage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uemail"] == null)
            {
                Response.Redirect("/Login/LoginPage.aspx");
            }
            else
            {
                GreetLabel.Text = Session["uemail"].ToString();
                using (SqlConnection con = DatabaseHelper.GetConnection())
                {
                    con.Open();
                }
            }
                
        }
    }
}