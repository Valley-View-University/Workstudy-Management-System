<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="VVU_WSMS.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


p {
  margin: 0 0 10px;
}

  p {
    orphans: 3;
    widows: 3;
  }
  
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  
.nav-justified {
  width: 100%;
}

table {
  max-width: 100%;
  background-color: transparent;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

  tr {
    page-break-inside: avoid;
  }
  </style>
</head>
<body>
    <p>
    </p>
    <p>
        STUDENT FORM&nbsp;</p>
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 108px">Student ID:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 22px; width: 108px">Firstname:</td>
                <td style="height: 22px; width: 239px">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="height: 22px; width: 20px"></td>
                <td style="height: 22px; width: 92px">Lastname:</td>
                <td style="height: 22px; width: 239px">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="height: 22px"></td>
                <td style="height: 22px; width: 86px">Othernames:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 108px"></td>
                <td style="height: 22px; width: 239px"></td>
                <td style="height: 22px; width: 20px"></td>
                <td style="height: 22px; width: 92px"></td>
                <td style="height: 22px; width: 239px"></td>
                <td style="height: 22px"></td>
                <td style="width: 86px; height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 108px">Date of Birth:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">Gender:</td>
                <td style="width: 239px">&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                </td>
                <td></td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px"></td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">Nationality:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">Telephone:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">Department:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">Program:</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="col-md-offset-0" Width="225px"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 86px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
