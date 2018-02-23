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

<link rel="stylesheet" type="text/css" href="Styles/styles.css" />    

    <title></title>
    
</head>
<body>
    <div id="wrapper">
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
        <h1 class="text-center">Welcome to Wax-Wash Car Wash</h1>
    <br />
        <h2 class="text-center">What makes Wax-Wash the best choice to wash your car? </h2>
       <img style="float: right; margin: 0px 15px 15px 0px;" src="Images/car1.png"><br />

        <p><span class="auto-style1">At Wax-Wash we understand that your car is more than a mode of transportation to you. All vehicles receive an unparallel attention to detail, utilizing the latest products and techniques to protect your automotive investment and bring out the full beauty and lustre of your vehicle.
            CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT CONTENT 
           </span></p>
    <p>&nbsp;</p>
    <p>Book a car wash right now and don&#39;t worry about losing time at the premises. Schedule the treatment that your car deserves!</p>

        <p>
        <button class="button" id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
        <button class="button" id="btnRegister" type="button" onclick="location.href='login.aspx'">Register</button>

        </p>
        <p>&nbsp;</p>
       <br />
       <br />
    <h1 class="text-center">Car wash options</h1>
       <div style="min-height:100%; height: 100%;">
        <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Soak in soap" longdesc="The add for one of the wash options" src="Images/Soal%20in%20soap.png" />
       </div>
       <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Wax n wash" class="auto-style3" longdesc="The add for one of the wash options" src="Images/wax%20n%20wash.png" />
       </div>
       <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Wax n wash" class="auto-style3" longdesc="The add for one of the wash options" src="Images/wax%20n%20wash.png" />
       </div>
       <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Wax n wash" class="auto-style3" longdesc="The add for one of the wash options" src="Images/wax%20n%20wash.png" />
       </div>
       <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Wax n wash" class="auto-style3" longdesc="The add for one of the wash options" src="Images/wax%20n%20wash.png" />
       </div>
       <div style="float:left; width: 30%; height: 29%; margin-bottom: 3%; margin-right: 1.5%; margin-left: 1.5%;">
           <img style="height: 100%; width: 100%;" alt="Wax n wash" class="auto-style3" longdesc="The add for one of the wash options" src="Images/wax%20n%20wash.png" />
        </div>
        </div>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    </main>
    </div>
       <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443 - Bogdan Muntean 101165247 - Matthew Smalley 100973825</p>
    </footer>
</body>
</html>
