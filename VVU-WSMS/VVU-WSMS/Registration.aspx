  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="VVU_WSMS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://ww.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Register</title>
    
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
                            <li><a href="Login.aspx">Home</a></li>
                            <li><a href="Login.aspx">Login</a></li>
                        </ul>
                    </div>
                </div>
           </div>
        </div>
  <!---Sign up page-->
        <h2 class="container">Sign Up Form</h2>
                
                <hr />
        <div class="center-page">

            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername"  CssClass="text-danger" runat="server" ErrorMessage="The Username field is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatoPassword" CssClass="text-danger" runat="server" ErrorMessage="The Password field is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtConfirmPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" CssClass="text-danger" runat="server" ErrorMessage="Password must be confirmed" ControlToValidate="txtConfirmPass"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" CssClass="text-danger" runat="server" ErrorMessage="The Name field is required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="The Email field is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </div>

            <div class="col-xs-11 space-vert">
            <asp:Button ID="btnSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btnSignup_Click"></asp:Button>
                <asp:Label ID="LabMsg" runat="server"></asp:Label>
            </div>
        </div>
<!---Sign up--->
  
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

