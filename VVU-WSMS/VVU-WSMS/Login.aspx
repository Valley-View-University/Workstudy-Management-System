<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VVU_WSMS.Login" %>


<!DOCTYPE html>

<html xmlns="http://ww.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Log In</title>
    
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Custom-Cs.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/respond.min.js"></script>

</head>
<body class>

    <form id="form1" runat="server">
       <div>
        <!---Navigation bar-->
           <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Login.aspx"> <span>
                            <img alt="Logo" src="Images/vvu-logo.png" height="30" /></span> VVU WSMS</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Login.aspx">Home</a></li>
                            <li><a href="Registration.aspx">Sign Up</a></li>
                        </ul>
                    </div>
                </div>
           </div>
       </div>
<!---Navbar End-->


  <!---Sign in start-->
       <div class="container">
         <!--  <div class="">-->
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                   <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                   <div class="col-md-3">
                        <asp:TextBox ID="Username" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                   </div>
                </div>
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                   <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword"  CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required!" ControlToValidate="Password"></asp:RequiredFieldValidator>
                   </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox>
                      <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                   </div>
                </div>
                 <div class="form-group">
                       <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="btnLogin_Click"></asp:Button>
                    </div>
                </div>
                <div class="form-group">
                     <div class="col-md-2"></div>
                     <div class="col-md-6">
                         <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                          
                </div>
        </div>
       </div>
       <!---Sign in end--->


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
