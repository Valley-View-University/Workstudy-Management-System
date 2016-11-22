using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace VVU_WSMS
{
    
    public partial class Registration : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["WorkStudyConnectionString1"].ConnectionString;
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "" && txtConfirmPass.Text != "" && txtEmail.Text != "" && txtName.Text != "")
            {
                if (txtPassword.Text == txtConfirmPass.Text)
                {
                    //Inserting from the form to the database
                    using (SqlConnection conn = new SqlConnection(connstr))
                    {
                        da.InsertCommand = new SqlCommand("INSERT INTO Users VALUES(@Username,@Password,@Email,@Name,'U')", conn);//adding 'U' helps define the usertype
                        da.InsertCommand.Parameters.AddWithValue("@Username", txtUsername.Text);
                        da.InsertCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
                        da.InsertCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                        da.InsertCommand.Parameters.AddWithValue("@Name", txtName.Text);
                        conn.Open();
                        da.InsertCommand.ExecuteNonQuery();

                        conn.Close();

                        LabMsg.Text = "Signup successful";
                        LabMsg.ForeColor = Color.Green;
                        Response.Redirect("~/Login.aspx");

                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        txtConfirmPass.Text = "";
                        txtEmail.Text = "";
                        txtName.Text = "";
                    }
                }
                else
                {
                    LabMsg.ForeColor = Color.Red;
                    LabMsg.Text = "Passwords do not match";
                }
            }
            else
            {
                LabMsg.ForeColor = Color.Red;
                LabMsg.Text = "All fields are mandatory";
            }
       }
    }
}