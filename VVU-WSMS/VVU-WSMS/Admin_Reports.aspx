<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Reports.aspx.cs" Inherits="VVU_WSMS.Admin_Reports" %>

<!DOCTYPE html>

<html xmlns="http://ww.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Admin Reports</title>
    
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Custom-Cs.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/respond.min.js"></script>

</head>
<body>

    <form id="form2" runat="server">
       <div>
        <!---position of navigation bar-->
           <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Login.aspx"> <span><img alt="Logo" src="Images/vvu-logo.png" height="30" /></span> VVU WSMS</a>
                    </div>
                     <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <asp:Button ID="btnAdminSignOut" runat="server" Class="btn btn-default navbar-btn " Text="Logout" OnClick="btnAdminSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
           </div>
       </div>
  <!---Navbar end--->

<!--Creating links to various tables-->
        <h2 class="container" class="col-xs-11">REPORTS</h2>
                <hr />
        <div class="center">
             <div class="form-group"
               
                <div class="form-horizontal"
        <!--<div class="center-page">-->
                 <div class="col-xs-11">
                <a class="col-xs-11" href="#"><span><img alt="" src="Images/pay.jpg" width="140"  height="140" /></span> </a>
                <h4 class="col-xs-11">
                    <asp:LinkButton ID="lnPayRep" runat="server" OnClick="lnPayRep_Click">PAYMENTS REPORT</asp:LinkButton>
                     </h4>
                <div class="col-xs-11">
                <a class="col-xs-11" href="#"><span><img alt="" src="Images/acct.ico" width="140"  height="140" /></span> </a>
                <h4 class="col-xs-11">
                    <asp:LinkButton ID="lnStudRep" runat="server" OnClick="lnStudRep_Click">Students Report</asp:LinkButton>
                    </h4>
                </div>
             </div>

        </div>
           
            

        <!--</div>-->
        </div>
<!--Creating links to various tables-->

  
   <!---Footer--->
        <p>
            &nbsp;</p>
        <hr />
       <footer class="form-group">
             <div class="container">
                 <p class="pull-right"><a href="#">Back to the top</a></p> 
                 <p class="">&copy; 2016 - VVU WorkStudy Management System &middot; </p>
             </div>
       </footer>
  <!---Footer-->                  
    </form>


<script src="Scripts/jquery-1.10.2.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>

</body>
</html>


