<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style5 {
            width: 244px;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <ul class="nav navbar-nav" >
                <li role="presentation"><a href="index.aspx">Home</a></li>
                <li role="presentation"><a href="info.aspx">Information Page</a></li>
                <li role="presentation"><a href="feedback.aspx">Feedback</a></li>
                <li role="presentation"><a href="about.aspx">About us</a></li>
                <li role="presentation"><a href="login.aspx">Login/registration</a></li>
            </ul>
        </div>
    </nav>
</header>
    <main></main>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Log in here!</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Username:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginUsername" ErrorMessage="You need to write your username!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginPassword" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="You need to write your password!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="156px" OnClick="btnLogin_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
        <footer>
            <p>Don&#39;t have an account? <a href="register.aspx">Register here !</a></p>
            <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>
</body>
</html>
