using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace VVU_WSMS
{
    public partial class Payments : System.Web.UI.Page
    {
        //Creating instances for the various class
        SqlDataAdapter da = new SqlDataAdapter();
        Sqlconn connstr = new Sqlconn();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            string message="Payment successful.";
            string script = "window.onload=function(){ alert('";
            script += message;
            script += "')};";

            SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
            da.InsertCommand = new SqlCommand("INSERT INTO Coordinator VALUES(@StudentID,@Firstname,@Lastname,@Othernames,@Task,@Hours,@APH)", conn);
            da.InsertCommand.Parameters.AddWithValue("@StudentID", txtStudentID.Text);
            da.InsertCommand.Parameters.AddWithValue("@Firstname", txtFirstname.Text);
            da.InsertCommand.Parameters.AddWithValue("@Lastname", txtLastname.Text);
            da.InsertCommand.Parameters.AddWithValue("@Othernames", txtOthernames.Text);
            da.InsertCommand.Parameters.AddWithValue("@Task", txtTask.Text);
            da.InsertCommand.Parameters.AddWithValue("@Hours", txtHours.Text);
            da.InsertCommand.Parameters.AddWithValue("@APH", txtAmount.Text);





            conn.Open();
            da.InsertCommand.ExecuteNonQuery();

            //Displays the success message on the screen
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            conn.Close();


            txtFirstname.Text = "";
            txtLastname.Text = "";
            txtOthernames.Text = "";
            txtStudentID.Text = "";
            txtHours.Text = "";
            txtTask.Text = "";
            txtStudentID.Focus();


        }

        protected void btnAdminSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
            da.SelectCommand = new SqlCommand("SELECT * FROM Supervisors WHERE StudentID='" + txtStudentID.Text + "' ", conn);
            ds.Clear();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)//loops through tables and return assigned indexes
                {
                    txtStudentID.Text = dr[0].ToString();
                    txtFirstname.Text = dr[1].ToString();
                    txtLastname.Text = dr[2].ToString();
                    txtOthernames.Text = dr[3].ToString();
                    txtTask.Text = dr[4].ToString();
                    txtHours.Text = dr[5].ToString();


                }
            }
            else
            {

                lblError.Text = "StudentID does not exist";
                /*txtStudentID.Text = "";
                txtFirstname.Text = "";
                txtLastname.Text = "";
                txtOthernames.Text = "";
                txtHours.Text = "";
                lblError.Text = "";
                */


            }
        }
    }
}