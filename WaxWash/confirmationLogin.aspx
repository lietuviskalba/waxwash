<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmationLogin.aspx.cs" Inherits="confirmationLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
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
