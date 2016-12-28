using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace VVU_WSMS
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAdminSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void lnReport_Click(object sender, EventArgs e)
        {
           /* string FilePath = Server.MapPath("~/rptPrograms.rpt");
            ReportDocument rdoc = new ReportDocument();
            rdoc.Load(FilePath);
            ProjectTableAdapters.ProgramTableAdapter ob = new ProjectTableAdapters.ProgramTableAdapter();

            DataTable oba = new DataTable();
            oba = ob.GetData();
            rdoc.SetDataSource(oba);
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            rdoc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Item-List");
        */}
    }
  
}
