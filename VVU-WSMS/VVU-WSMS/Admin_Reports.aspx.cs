using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
namespace VVU_WSMS
{
    public partial class Admin_Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.apsx");
        }

        protected void lnPayRep_Click(object sender, EventArgs e)
        {
            try
            {
                string FilePath = Server.MapPath("~/rptAdminPay.rpt");
                ReportDocument rdoc = new ReportDocument();
                rdoc.Load(FilePath);
                ProjectTableAdapters.PaymentsTableAdapter ob = new ProjectTableAdapters.PaymentsTableAdapter();

                DataTable oba = new DataTable();
                oba = ob.GetData();
                rdoc.SetDataSource(oba);
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = "application/pdf";
                rdoc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Payments");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void lnStudRep_Click(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("~/rptStudents.rpt");
            ReportDocument rdoc = new ReportDocument();
            rdoc.Load(FilePath);
            ProjectTableAdapters.StudentsTableAdapter ob = new ProjectTableAdapters.StudentsTableAdapter();

            DataTable oba = new DataTable();
            oba = ob.GetData();
            rdoc.SetDataSource(oba);
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            rdoc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Registered Students");
        }
    }
}