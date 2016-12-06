<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="VVU_WSMS.Departments" %>


<!DOCTYPE html>

<html xmlns="http://ww.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Admin-Departments</title>
    
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
        
<!---Department form-->
        <div class="container">
         <!--  <div class="">-->
            <div class="form-horizontal">
                <h2>Departments</h2>
                <hr />
                <div class="form-group">
                   <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Department ID"></asp:Label>
                   <div class="col-md-3">
                        <asp:TextBox ID="DepartmentID" CssClass="form-control" runat="server"></asp:TextBox>
                   </div>
                </div>
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Department"></asp:Label>
                    
                   <div class="col-md-3">
                        <asp:TextBox ID="Department" CssClass="form-control" runat="server" ></asp:TextBox>
                   </div>
                </div>
                <div class="form-group">
                   <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Department Head"></asp:Label>
                   <div class="col-md-3">
                        <asp:TextBox ID="DepartmentHead" CssClass="form-control" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorDepartmentHead"  CssClass="text-danger" runat="server" ErrorMessage="The Department Head field is Required!" ControlToValidate="DepartmentHead"></asp:RequiredFieldValidator>
                   </div>
                </div>
                <div class="form-group">
                       <div class="col-md-2">
                       </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnDeptSave" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnDeptSave_Click"></asp:Button>
                    </div>
                </div>
              
            </div>
       </div>
<!---Department form-->


  
  <!---Footer--->
       <hr />
       <footer class="footer-pos">
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


