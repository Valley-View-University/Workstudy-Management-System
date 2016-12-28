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
    public partial class Students : System.Web.UI.Page
    {
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        Sqlconn connstr = new Sqlconn();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sessions
            if(Session["USERNAME"] != null)
            {
                lblSuccess.Text = "Login Success, Welcome "+Session["USERNAME"].ToString()+"";
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        } 

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            //showing or displaying success message after insertion is done
            string message = "Registration successful.";
            string script = "window.onload=function(){ alert('";
            script += message;
            script += "')};";

            //the session name or username is assigned to a string called StudentiD
            //which is then assigned to the column name studentID in the database table 
            string StudentID = Session["USERNAME"].ToString();

            string gender = "";

            //checks to see which button is click and returns the value
            if (rdFemale.Checked == true)
            {
                gender = "Female";
            }
            else
            {
                gender = "Male";
            }
            try
            {

                if (btnSubmit.Text == "Submit")
                {
                    //Connection to the database
                    SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
                    //the insertion command. used to insert values entered in the textboxes
                    da.InsertCommand = new SqlCommand("INSERT INTO Students VALUES(@StudentID,@Firstname,@Lastname,@Othernames,@Gender,@Email,@Telephone,@TaskID,@Supervisor,@DepartmentID,@ProgramID,@NationalityID)", conn);
                    da.InsertCommand.Parameters.AddWithValue("@StudentID", StudentID);
                    da.InsertCommand.Parameters.AddWithValue("@Firstname", txtFirstname.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Lastname", txtLastname.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Othernames", txtOthers.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Gender", gender);
                    da.InsertCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Telephone", txtTel.Text);
                    da.InsertCommand.Parameters.AddWithValue("@TaskID", ddlTaskID.SelectedValue);
                    da.InsertCommand.Parameters.AddWithValue("@Supervisor", txtSupervisor.Text);
                    da.InsertCommand.Parameters.AddWithValue("@DepartmentID", ddlDept.SelectedValue);
                    da.InsertCommand.Parameters.AddWithValue("@ProgramID", ddlProgram.SelectedValue);
                    da.InsertCommand.Parameters.AddWithValue("@NationalityID", ddlNationality.SelectedValue);
                    
                    

                    conn.Open();
                    da.InsertCommand.ExecuteNonQuery();

                    //Displays the success message on the screen
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                    conn.Close();

                }
                //clears each textbox
                txtEmail.Text="";
                txtFirstname.Text="";
                txtLastname.Text="";
                txtOthers.Text="";
                txtTel.Text="";
                txtEmail.Text = "";
                txtSupervisor.Text = "";

                //cursor is focused in the textbox
                txtFirstname.Focus();
                Response.Redirect("~/Student Page.aspx");
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void ddlTask_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
            da.SelectCommand = new SqlCommand("SELECT * FROM TASKS WHERE Task ='" + ddlTaskID.SelectedValue + "' ", conn);
            ds.Clear();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)//loops through tables and return assigned indexes
                {
                 
                    txtSupervisor.Text = dr[3].ToString();
                    

                }
            }
            else
            {

                lblError.Text = "Cant work";


            
            }
        }

        protected void rdMale_CheckedChanged(object sender, EventArgs e)
        {
           
        }
    }
}
