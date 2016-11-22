using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VVU_WSMS
{
    public partial class Students : System.Web.UI.Page
    {
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
    }
}