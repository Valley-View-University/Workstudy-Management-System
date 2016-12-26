using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace VVU_WSMS
{
    public partial class Login : System.Web.UI.Page
    {
        String connstr = ConfigurationManager.ConnectionStrings["WorkStudyConnectionString1"].ConnectionString;
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //retrieving Username and Password from cookies
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"] != null)
                {
                    //populating textboxes from cookies when not null
                    Username.Text = Request.Cookies["UNAME"].Value;
                    Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                da.SelectCommand = new SqlCommand("SELECT * FROM Users WHERE StudentID='"+Username.Text+"' AND Password='"+ Password.Text+"'", conn);
                conn.Open();
                da.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    //Checks if remember me checkbox is ticked
                    if (CheckBox1.Checked)
                    {
                        //Stores Username and Password
                        Response.Cookies["UNAME"].Value = Username.Text;
                        Response.Cookies["PWD"].Value = Password.Text;

                        //Set number of days for cookies to expire or delete
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                    }
                    else //when user does not tick the "remember me box" 
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    //fetching usertype value
                    string Utype;
                    Utype = dt.Rows[0][4].ToString().Trim();


                    //Check usertype and redirect to the appro. pages
                    if (Utype=="U")
                    {
                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/Student Page.aspx");
                    }
                    if (Utype == "A")
                    {
                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/Admin.aspx");
                    }
                    if (Utype == "S")
                    {
                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/Supervisor.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username or Password";
                }
            }
        }
    }
}