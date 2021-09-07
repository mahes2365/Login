<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="signup.css" />
    <style type="text/css">
        .auto-style3 {
            height: 50px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style7 {
            height: 51px;
        }
        .auto-style9 {
            height: 49px;
        }
        .auto-style10 {
            height: 50px;
            width: 293px;
        }
        .auto-style11 {
            height: 24px;
            width: 293px;
        }
        .auto-style12 {
            height: 51px;
            width: 293px;
        }
        .auto-style13 {
            height: 49px;
            width: 293px;
        }
        .auto-style22 {
            height: 25px;
            width: 293px;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style26 {
            height: 67px;
        }
        .auto-style27 {
            height: 50px;
            width: 320px;
        }
        .auto-style28 {
            height: 24px;
            width: 320px;
        }
        .auto-style29 {
            height: 51px;
            width: 320px;
        }
        .auto-style30 {
            height: 25px;
            width: 320px;
        }
        .auto-style31 {
            height: 49px;
            width: 320px;
        }
        .auto-style34 {
            height: 38px;
        }
    </style>
</head>
<body>
   <div class="outside-form">
    <form id="form1" runat="server" class="form-container">
        <div  class="inside-form">
            <table style="width:80%;">
                <tr class="title">
                    <td class="auto-style3" colspan="3">
                        Sign up</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="lblusername1" runat="server" Text="Username"  ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtbxusername1" runat="server" Height="35px" Width="230px" placeholder="Enter  username"></asp:TextBox>
&nbsp;&nbsp; </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtbxusername1" ErrorMessage="*Enter the Username " ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="lblemail1" runat="server" Text="E-Mail"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtbxemail1" runat="server" Height="35px" Width="230px" placeholder="Enter your mail"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtbxemail1" ErrorMessage="*Enter the email " ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <asp:Label ID="lblpwd1" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtbxpwd1" runat="server" Height="35px" TextMode="Password" Width="230px" placeholder="Enter password"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style22">
                        <asp:CompareValidator ID="cvpwd" runat="server" ControlToCompare="txtbxconfirmpwd" ControlToValidate="txtbxpwd1" ErrorMessage="Password do not match" ForeColor="Red" ValidationGroup="form"></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtbxpwd1" ErrorMessage="*Enter the password" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Label ID="lblconfirmpwd" runat="server" Text="Confirmation Password"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtbxconfirmpwd" runat="server" Height="35px" TextMode="Password" Width="230px"  placeholder="Enter confirm password"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        &nbsp;</td>
                    <td class="auto-style22">
                        <asp:CompareValidator ID="cvconfirmpwd" runat="server" ControlToCompare="txtbxpwd1" ControlToValidate="txtbxconfirmpwd" ErrorMessage="Password do not match" ForeColor="Red" ValidationGroup="form"></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvconfirmpwd" runat="server" ControlToValidate="txtbxconfirmpwd" ErrorMessage="*Enter the password" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr class="signup-button-row">
                    <td class="auto-style26" colspan="3">
                        &nbsp;
                        <asp:Button ID="btsignup" runat="server" Height="35px" OnClick="btsignup_Click" Text="Sign up" ValidationGroup="form" Width="100px" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="form" />
                    </td>
                </tr>
                <tr class="bottom">
                    <td class="auto-style34" colspan="3">If you are already a member?
                        <asp:Button ID="btsignin" runat="server" Height="30px" OnClick="brsign_Click" Text="Sign in" Width="70px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
       </div>
</body>
</html>
