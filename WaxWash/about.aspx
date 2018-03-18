<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
        <li class="about"><a class="active" href="about.aspx">About Us</a></li>
        <li class="login"><a href="login.aspx">Login/register</a></li>
      </ul>
    </div>
    </header>
    <main>
        <h3>Mantas</h3>
        <p>
            <span class="mceItemHidden">An exchange student from Denmark.Helping set up a git repository for a team to work on. Creating some pages as required per requirments. Adding content to pages to make them more lively.</span></p>
        <h3>Matthew</h3>
        <p>about the other him</p>
        <h3>Bogdan</h3>
        <p>Exchange student from Denmark. In this part of the project I was dooing the documentation and the software design artifacts, created the database model and organised meetings. Also, I was working on the feedback page and the regular expressions are done by me. I am really proud that I could do the regexes with the knowledge that I have gotten from another course. I hope that you will enjoy our product as much as we enjoyed doing it!</p>
    </main>

    </div>

        <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443 - Bogdan Muntean 101165247 - Matthew Smalley 100973825</p>
    </footer>
</body>
</html>
