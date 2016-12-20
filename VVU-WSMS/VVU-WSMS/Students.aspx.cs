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
            string gender = "";
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

                    SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
                    da.InsertCommand = new SqlCommand("INSERT INTO Students VALUES(@StudentID,@Firstname,@Lastname,@Othernames,@Gender,@Email,@Telephone,@Supervisor,@DepartmentID,@ProgramID,@NationalityID)", conn);
                    da.InsertCommand.Parameters.AddWithValue("@StudentID", txtStudID.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Firstname", txtFirstname.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Lastname", txtLastname.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Othernames", txtOthers.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Gender", gender);
                    da.InsertCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Telephone", txtTel.Text);
                    da.InsertCommand.Parameters.AddWithValue("@Supervisor", txtSupervisor.Text);
                    da.InsertCommand.Parameters.AddWithValue("@DepartmentID", ddlDept.SelectedValue);
                    da.InsertCommand.Parameters.AddWithValue("@ProgramID", ddlProgram.SelectedValue);
                    da.InsertCommand.Parameters.AddWithValue("@NationalityID", ddlNationality.SelectedValue);
                    
                    

                    conn.Open();
                    da.InsertCommand.ExecuteNonQuery();
                    conn.Close();

                }
                txtEmail.Text="";
                txtFirstname.Text="";
                txtLastname.Text="";
                txtOthers.Text="";
                txtStudID.Text="";
                txtTel.Text="";
                txtEmail.Text = "";
                txtSupervisor.Text = "";
                txtStudID.Focus();

            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void ddlTask_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connstr.ConnectionStr());
            da.SelectCommand = new SqlCommand("SELECT * FROM TASKS WHERE TaskID ='" + ddlTaskID.SelectedValue + "' ", conn);
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
    }
}
