<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Main" %>

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
            font-size: 11pt;
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
    <main>
        <h1>Welcome to Wax-Wash Car Wash</h1>
        <h4>Bringing back that new car feeling.</h4>
        <img src="Images/car1.png"><br />
    <br />
    What makes Wax Wash the best choice to wash your car?<br />

        <p><span class="auto-style1">At Wax Wash we understand that your car is more than a mode of transportation to you. All vehicles receive an unparallel attention to detail, utilizing the latest products and techniques to protect your automotive investment and bring out the full beauty and lustre of your vehicle.</span></p>

        <p><button id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
        <button id="btnRegister" type="button" onclick="location.href='login.aspx'">Register</button>

        </p>
        <p>Book a car wash right now and not worry about losing time at the premises. Schedule the treatment that your car deserves!</p>
       

    </main>
    </form>
       <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>
</body>
</html>
