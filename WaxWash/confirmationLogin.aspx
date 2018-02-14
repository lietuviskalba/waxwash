<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmationLogin.aspx.cs" Inherits="confirmationLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <main>
     <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCongrats" runat="server" Text="Successfully logged in as.."></asp:Label>
        </div>
    </form>
    </main>
        <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>

</body>
</html>
