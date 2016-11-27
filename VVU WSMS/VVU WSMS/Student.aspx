<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="VVU_WSMS.Student" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <title>VVU WSMS</title>

    <!-- Bootstrap -->
    
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    

    <!--<script src="Scripts/respond.min.js"></script>-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                 <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Student Form.aspx"> <span> <img alt="Logo" src="images/VVU.jpg" height="30"/></span>VVU- WORK-STUDY MANAGEMENT SYSTEMS</a>
                </div>
                 <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Student Form.aspx">Home</a></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                 </div>
            </div>
        </div>
      </div>

         <!--Student Form-->
        <div class="container">
            <div class="form-horizontal">
                <h2>Student Form</h2>
                <hr />
                <div class="form-group">
                           
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-1 control-label" Text="StudentID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtStudID" Class="form-control" runat="server" placeholder="Student ID"></asp:TextBox>
                   </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-1 control-label" Text="Firstname"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtFirstname" Class="form-control" runat="server" placeholder="Firstname"></asp:TextBox>
                   </div>
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-1 control-label" Text="Lastname"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtLastname" Class="form-control" runat="server" placeholder="Lastname"></asp:TextBox>
                   </div>
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-1 control-label" Text="Othernames"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtOthers" Class="form-control" runat="server" placeholder="Othernames"></asp:TextBox>
                   </div>
                </div>

                 <div class="form-group">
                           
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-1 control-label" Text="Gender"></asp:Label>
                    <div class="col-md-3">
                    <asp:RadioButton ID="rdMale" runat="server" Text="Female" />
                    <asp:RadioButton ID="rdFemale" runat="server" class="col-md-offset-0 col-md-6" Text="Male"/>
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-1 control-label" Text="Date of Birth"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDOB" Class="form-control" runat="server" placeholder="Date-of-Birth"></asp:TextBox>
                   </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-1 control-label" Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmail" Class="form-control" runat="server" placeholder="Email"></asp:TextBox>
                   </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-1 control-label" Text="Telephone"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtTel" Class="form-control" runat="server" placeholder="Telephone"></asp:TextBox>
                   </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-1 control-label" Text="Department"></asp:Label>
                    <div class="col-md-3"> 
                        <asp:DropDownList ID="ddlDept" Class="form-control" runat="server" placeholder="---------" DataSourceID="SqlDataSourceDept" DataTextField="Name" DataValueField="DepartmentID"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:WSMSConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                        
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-1 control-label" Text="Program"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlProgram" Class="form-control" runat="server" placeholder="----------" DataSourceID="SqlDataSourceProg" DataTextField="Name" DataValueField="ProgramID"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceProg" runat="server" ConnectionString="<%$ ConnectionStrings:WSMSConnectionString %>" SelectCommand="SELECT * FROM [Program]"></asp:SqlDataSource>
                        
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-1 control-label" Text="Nationality"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlNationality" Class="form-control" runat="server" placeholder="----------" DataSourceID="SqlDataSourceNat" DataTextField="Name" DataValueField="NationalityID"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceNat" runat="server" ConnectionString="<%$ ConnectionStrings:WSMSConnectionString %>" SelectCommand="SELECT * FROM [Nationality]"></asp:SqlDataSource>
                        
                   </div>
                </div>

                <div class="form-group">
                           
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" />
                   </div>
                </div>
               
            </div>
        </div>
        <!-- Student Form-->

 </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>