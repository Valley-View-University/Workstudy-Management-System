﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="VVU_WSMS.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/ >
    <meta name"viewport" content="width-device-width, initial-scale-1.0"/>
    <title>Student Registration</title>
    
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
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn " Text="Logout" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
           </div>
        </div>
 <!---Footer--->
        <p>
            &nbsp;</p>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
    </form>
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
