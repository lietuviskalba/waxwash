﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmationLogin.aspx.cs" Inherits="confirmationLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <div class="wrapper">
<header>

    <%--
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
         --%>
    <div class="nav">
      <ul>
        <li class="home"><a href="index.aspx">Home</a></li>
        <li class="information"><a href="info.aspx">Information</a></li>
        <li class="feedback"><a href="feedback.aspx">Feedback</a></li>
        <li class="about"><a href="about.aspx">About Us</a></li>
        <li class="login"><a href="login.aspx">Login/register</a></li>
      </ul>
    </div>
    </header>
    <main>
     <form id="form1" runat="server">
        <div>
            <h1>
            <asp:Label ID="lblCongrats" runat="server" Text="Congratulations! You successfully logged in!" ForeColor="#00CC00"></asp:Label>
            </h1>
        </div>
    </form>
    </main>
        </div>
        <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443 - Bogdan Muntean 101165247 - Matthew Smalley 100973825 - Kyung Woog Steve Min 101024241 - Myles Watson 101061621</p>
    </footer>

</body>
</html>
