<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="VVU_WSMS.Payments" %>

<!DOCTYPE html>

<html xmlns="http://ww.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Payment</title>
    
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Custom-Cs.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/respond.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">
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
     <!--Student Form-->
      <div class="container">
            <div class="form-horizontal">
                <h2>Payment</h2>
                <hr />
                <div class="form-group">
                           
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-1 control-label" Text="StudentID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtStudentID" Class="form-control" runat="server" placeholder="StudentID"></asp:TextBox>
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>    
                        <div class="col-xs-11 space-vert">   
                            <asp:Button ID="btnSearch" runat="server" Class="btn btn-default" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                        
                        </div>
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-1 control-label" Text="Firstname"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtFirstname" Class="form-control" runat="server" placeholder="Firstname"></asp:TextBox>
                   </div>
                    
                </div>

                <div class="form-group">
                           
                <asp:Label ID="Label3" runat="server" CssClass="col-md-1 control-label" Text="Lastname"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtLastname" Class="form-control" runat="server" placeholder="Lastname"></asp:TextBox>
                   </div>
                </div>

              

                <div class="form-group">
                           
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-1 control-label" Text="Othernames"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtOthernames" Class="form-control" runat="server" placeholder="Othernames"></asp:TextBox>
                   </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-1 control-label" Text="Task"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtTask" Class="form-control" runat="server" placeholder="Task"></asp:TextBox>
                   </div>
                </div>
                <div class="form-group">
                           
                    <asp:Label ID="Label12" runat="server" CssClass="col-md-1 control-label" Text="Hours"></asp:Label>
                    <div class="col-md-3"> 
                        <asp:TextBox ID="txtHours" Class="form-control" runat="server" placeholder="Hours"></asp:TextBox>
                    </div>
                </div>

                 <div class="form-group">
                           
                    <asp:Label ID="Label13" runat="server" CssClass="col-md-1 control-label" Text="Amount"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAmount" Class="form-control" runat="server" placeholder="Amount"></asp:TextBox>
                   </div>
                </div>
                
                <div class="form-group">
                           
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <asp:Button ID="btnPay" runat="server" Text="Pay" CssClass="btn btn-primary" OnClick="btnPay_Click" />
                   </div>
                </div>
               
            </div>
        </div>
        <!-- Student Form-->
        
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

