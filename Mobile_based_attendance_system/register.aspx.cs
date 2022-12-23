using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Mobile_based_attendance_system
{
    public partial class register : System.Web.UI.Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "select count(*) from employee_db where per_no='" + perno.Text +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                this.Label6.Text = "User Already exist";
            }
            else
            {
                con.Close();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
                conn.Open();
                SqlDataAdapter sqlad_login = new SqlDataAdapter($"insert into login values('{perno.Text}','{pass2.Text}')", conn);
                SqlDataAdapter sqlad_emp = new SqlDataAdapter($"insert into employee_db values('{full_name.Text}','{desg.SelectedItem.Text}','{desg.SelectedValue}','{perno.Text}','{depart.SelectedItem.Text}','{depart.SelectedValue}')", conn);
                DataTable DT_login = new DataTable();
                DataTable DT_emp = new DataTable();
                sqlad_login.Fill(DT_login);

                if (pass1.Text == pass2.Text)
                {
                    sqlad_emp.Fill(DT_emp);
                    String csname1 = "PopupScript";
                    ClientScriptManager cs = Page.ClientScript;
                    Type cstype = this.GetType();
                    String msg = "alert('Registration Done');";
                    cs.RegisterStartupScript(cstype, csname1, msg, true);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    this.Label6.Text = "Password Does Not Match";
                }
            }
        }
    }
}