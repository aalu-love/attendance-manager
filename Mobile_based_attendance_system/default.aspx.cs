using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobile_based_attendance_system
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}