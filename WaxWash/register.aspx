<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style3 {
            width: 254px;
            height: 27px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 244px;
        }
        .auto-style6 {
            height: 27px;
            width: 244px;
        }
    </style>
</head>
<body>
            <header>
        <ul>
            <a href="index.aspx"><li>Home</li></a>
            <a href="info.aspx"><li>Information Page</li></a>
            <a href="feedback.aspx"><li>Feedback</li></a>
            <a href="about.aspx"><li>About us</li></a>
            <a href="login.aspx"><li>Login/Register</li></a>
            </ul>
    </header>
    <main></main>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Create account here!</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email address:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="You must enter an email address!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtRegisterUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegisterUsername" ErrorMessage="You must enter a username!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterPassword" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegisterPassword" ErrorMessage="You must enter a password!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Repeat password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterRepeatPassword" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegisterRepeatPassword" ErrorMessage="You must repeat your password!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="155px" OnClick="btnRegister_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
        <footer>
        <p>Have an account? <a href="login.aspx">Login here!</a></p>
            <p>&nbsp;</p>
            <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>
</body>
</html>
