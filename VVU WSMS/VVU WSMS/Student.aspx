<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="VVU_WSMS.Student" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width-device-width, initial-scale-1.0"/>
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



  

         <!--Student Form-->
      <div class="container">
            <div class="form-horizontal">
                <h2>Student Form</h2>
                <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
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
                           
                    <asp:Label ID="Label12" runat="server" CssClass="col-md-1 control-label" Text="Task"></asp:Label>
                    <div class="col-md-3"> 
                        <asp:DropDownList ID="ddlTaskID" Class="form-control" runat="server" placeholder="---------" DataSourceID="SqlDataSourceStTask" DataTextField="Task" DataValueField="TaskID" OnSelectedIndexChanged="ddlTask_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceStTask" runat="server" ConnectionString="<%$ ConnectionStrings:WorkStudyConnectionString1 %>" SelectCommand="SELECT * FROM [Tasks]"></asp:SqlDataSource>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
                    </div>
                </div>

                 <div class="form-group">
                           
                    <asp:Label ID="Label13" runat="server" CssClass="col-md-1 control-label" Text="Supervisor"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSupervisor" Class="form-control" runat="server" placeholder="Supervisor"></asp:TextBox>
                   </div>
                </div>
                <div class="form-group">

                <div class="form-group">
                           
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-1 control-label" Text="Department"></asp:Label>
                    <div class="col-md-3"> 
                        <asp:DropDownList ID="ddlDept" Class="form-control" runat="server" placeholder="---------" DataSourceID="SqlDataSourceStDept" DataTextField="Department" DataValueField="Department"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceStDept" runat="server" ConnectionString="<%$ ConnectionStrings:WorkStudyConnectionString1 %>" SelectCommand="SELECT * FROM [Departments]"></asp:SqlDataSource>
                        
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-1 control-label" Text="Program"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlProgram" Class="form-control" runat="server" placeholder="----------" DataSourceID="SqlDataSourceStPro" DataTextField="Program" DataValueField="Program"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceStPro" runat="server" ConnectionString="<%$ ConnectionStrings:WorkStudyConnectionString1 %>" SelectCommand="SELECT * FROM [Program]"></asp:SqlDataSource>
                        
                    </div>
                </div>

                <div class="form-group">
                           
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-1 control-label" Text="Nationality"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlNationality" Class="form-control" runat="server" placeholder="----------" DataSourceID="SqlDataSourceStNat" DataTextField="Nationality" DataValueField="Nationality"></asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSourceStNat" runat="server" ConnectionString="<%$ ConnectionStrings:WorkStudyConnectionString1 %>" SelectCommand="SELECT * FROM [Nationality]"></asp:SqlDataSource>
                        
                   </div>
                </div>

                <div class="form-group">
                           
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                   </div>
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
