<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application form.aspx.cs" Inherits="WebApplication1.Application_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 158px;
        }
        .auto-style4 {
            width: 158px;
            text-align: right;
        }
        .auto-style5 {
            width: 185px;
        }
        .auto-style6 {
            width: 158px;
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            width: 185px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
            text-align: left;
        }
        .auto-style9 {
            text-align: left;
        }
        #Reset1 {
            width: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <table class="auto-style1" title="Account Regisration">
            <tr>
                <td class="auto-style4">Username:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Required" ControlToValidate="TextBoxUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Email:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="180px" OnTextChanged="TextBoxPassword_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxConfirm" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxConfirm" ErrorMessage="Confirm Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirm" ErrorMessage="Both passwords must be validated" ForeColor="Red"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Campus:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListCampus" runat="server" Width="180px">
                        <asp:ListItem>Select Your Campus</asp:ListItem>
                        <asp:ListItem>Oyibi</asp:ListItem>
                        <asp:ListItem>Techiman</asp:ListItem>
                        <asp:ListItem>Kumasi</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Campus" ControlToValidate="DropDownListCampus" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
