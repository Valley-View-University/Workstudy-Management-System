using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace VVU_WSMS
{
    public partial class Supervisor : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        Sqlconn connstr = new Sqlconn();
        Students objstd = new Students();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSupSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
                da.InsertCommand = new SqlCommand("INSERT INTO Supervisors VALUES(@StudentID,@Firstname,@Lastname,@Othernames,@Task,@Hours)", conn);
                da.InsertCommand.Parameters.AddWithValue("@StudentID", txtStudentID.Text);
                da.InsertCommand.Parameters.AddWithValue("@Firstname", txtFirstname.Text);
                da.InsertCommand.Parameters.AddWithValue("@Lastname", txtLastname.Text);
                da.InsertCommand.Parameters.AddWithValue("@Othernames", txtOthernames.Text);
                da.InsertCommand.Parameters.AddWithValue("@Task", txtTask.Text);
                da.InsertCommand.Parameters.AddWithValue("@Hours", txtHours.Text);





                conn.Open();
                da.InsertCommand.ExecuteNonQuery();
                conn.Close();


                txtFirstname.Text = "";
                txtLastname.Text = "";
                txtOthernames.Text = "";
                txtStudentID.Text = "";
                txtHours.Text = "";
                txtTask.Text = "";
                txtStudentID.Focus();

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
            da.SelectCommand = new SqlCommand("SELECT * FROM Students WHERE StudentID='" + txtStudentID.Text + "' ", conn);
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
                    txtTask.Text = dr[7].ToString();


                }
            }
            else
            {

                lblError.Text = "StudentID does not exist";
                txtStudentID.Text = "";
                txtFirstname.Text = "";
                txtLastname.Text = "";
                txtOthernames.Text = "";
                lblError.Text = "";



            }
        }
    }
}
    