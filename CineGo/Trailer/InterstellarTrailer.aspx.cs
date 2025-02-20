using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.Trailer
{
	public partial class InterstellarTrailer : System.Web.UI.Page
	{
		string time;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void time1_Click(object sender, EventArgs e)
        {
			time = "09:00 am";
            
        }

        protected void time2_Click(object sender, EventArgs e)
        {
            time = "11:00 am";
        }

        protected void time3_Click(object sender, EventArgs e)
        {
            time = "05:00 pm";
        }
    }
}