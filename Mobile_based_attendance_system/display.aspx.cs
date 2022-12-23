using System;
using System.Text;
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
    public partial class display : System.Web.UI.Page
    {
        public SqlDataReader reader;
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false; //Inilized until the getlocation is pressed
            Button2.Enabled = false; //Inilized until the getlocation is pressed

            if (Session["user"] != null)
            {
                if (!IsPostBack)
                {
                    Page detail = (Page)Context.Handler;
                    if (detail is login)
                    {
                        //Connection Established
                        con.Open();
                        string query = $"select * from employee_db, dept_data where per_no='{((login)detail).perno}' and employee_db.department=dept_data.department_name";
                        SqlCommand cmd = new SqlCommand(query, con);
                        Session["user"] = ((login)detail).perno;

                        //read the Outpur query
                        reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            Label5.Text = reader["full_name"].ToString();
                            Label6.Text = reader["desg"].ToString();
                            Label7.Text = reader["per_no"].ToString();
                            Label8.Text = reader["department"].ToString();
                            lblLat.Text = reader["lati"].ToString();
                            lblLong.Text = reader["long"].ToString();
                        }
                        reader.Close();
                        con.Close();
                    }
                }
            } else
            {
                Response.Redirect("login.aspx");
            }

        }
        protected void logoutBtn(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Clear();
                Session["user"] = "";
                Response.Redirect("Default.aspx");
            }
        }
    }
}