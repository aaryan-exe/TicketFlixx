﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.AboutUs
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\SignUp\\SignUpPage.aspx");
        }
    }
}