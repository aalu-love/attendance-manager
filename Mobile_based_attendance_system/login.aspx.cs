using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Mobile_based_attendance_system
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginl_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "select count(*) from login where per_no='" + perlog.Text + "' and password='" + passlog.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                //now we create a session
                Session["user"] = perlog.Text;
                Server.Transfer("display.aspx");
                con.Close();
            }
            else
            {
                this.result.Text = "Login Failed";
            }
        }
        public string perno
        {
            get
            {
                return perlog.Text;
            }
        }
    }
}