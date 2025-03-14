using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.Lander
{
	public partial class Lander : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
			Response.Redirect("\\SignUp\\SignUpPage.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/HomePage/HomePage.aspx");
        }
    }
}