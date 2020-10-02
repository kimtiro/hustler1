using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hustler1
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("FreelancerLoginPage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            Response.Redirect("FreelancerRegistrationForm.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployerLoginForm.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployerRegistrationForm.aspx");
        }
    }
}