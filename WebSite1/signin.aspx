<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="signin.css" />
    <style type="text/css">
        .auto-style2 {
            width: 282px;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
            width: 293px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            width: 282px;
            height: 24px;
        }
        .auto-style11 {
            height: 24px;
            width: 293px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            width: 282px;
            height: 51px;
        }
        .auto-style12 {
            height: 51px;
            width: 293px;
        }
        .auto-style7 {
            height: 51px;
        }
        .auto-style21 {
            width: 282px;
            height: 25px;
        }
        .auto-style22 {
            height: 25px;
            width: 293px;
        }
        .auto-style23 {
            height: 25px;
        }
    </style>
</head>
<body>
    <div class="outside-form">
    <form id="form1" runat="server" class="form-container">
        <div class="inside-form">
            <table style="width:80%;">
                <tr class="title">
                    <td class="auto-style3" colspan="3">
                        Sign in</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblusername2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtbxusername2" runat="server" Height="35px" Width="230px" placeholder="Enter Username"></asp:TextBox>
&nbsp;&nbsp; </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtbxusername2" ErrorMessage="*Enter the Username " ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblpwd2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtbxpwd2" runat="server" Height="35px" TextMode="Password" Width="230px" placeholder="Enter password"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:LinkButton ID="linkbtforgotpassword" runat="server">Forgot password?</asp:LinkButton>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtbxpwd2" ErrorMessage="*Enter the password" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr class="signin-button-row">
                    <td class="auto-style3" colspan="3">
                        <asp:Button ID="btsignin" runat="server" Height="35px" OnClick="Button1_Click" Text="Sign in" Width="100px" ValidationGroup="form" />
                    </td>
                </tr>
                <tr class="bottom">
                    <td class="auto-style7" colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="New user then?"></asp:Label>
&nbsp;<asp:Button ID="btsignup" runat="server" OnClick="btsignup_Click" Text="Sign up" Height="30px" Width="70px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</div>
</body>
</html>
