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
    
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            width: 700px;
            height: 300px;
        }
        .auto-style3 {
            width: 900px;
            height: 250px;
        }
    </style>
    
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
        <li class="home"><a class="active" href="index.aspx">Home</a></li>
        <li class="information"><a href="info.aspx">Information</a></li>
        <li class="feedback"><a href="feedback.aspx">Feedback</a></li>
        <li class="about"><a href="about.aspx">About Us</a></li>
        <li class="login"><a href="login.aspx">Login/register</a></li>
      </ul>
    </div>
</header>
   <meta name="viewport" content="width=device-width, initial-scale=1">
        <main>
        <img alt="logo" class="auto-style3" src="Images/Better%20images/Logo%20for%20wax%20wash.jpg" /><br />
        <h2 class="text-center">What makes Wax-Wash the best choice to wash your car? </h2>

        <p><span class="auto-style1">At Wax-Wash we understand that your car is more than a mode of transportation to you. All vehicles receive an unparallel attention to detail, utilizing the latest products and techniques to protect your automotive investment and bring out the full beauty and lustre of your vehicle.
            We love cars and we have restored An Canadian Car Wash to its former glory, combining our European expectations of quality with friendly Canadian service and good old-fashioned hard work with sweat and wax. It long stood as Torontos favorite full-service car wash, proudly serving tens of thousands of locals, snowbirds and visitors each year. So please come on down!</span></p>
    <p>&nbsp;</p>
       <img style="margin: 15px 15px 15px 15px;" src="Images/car1.png">
    <p>Book a car wash right now and don&#39;t worry about losing time at the premises. Schedule the treatment that your car deserves!</p>

        <p>
        <button class="button" id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
        <button class="button" id="btnRegister" type="button" onclick="location.href='register.aspx'">Register</button>

        </p>
        <p>&nbsp;</p>
       <br />
       <br />
    <h1 class="text-center">Car wash options</h1>

        <img alt="full service" style="height:40%; width:45%; float:left; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Full%20service.jpg" />
        <img alt="wax" style="height:40%; width:45%; float:right; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Wax%20wash%20program.jpg" />
        <img alt="self service" style="height:40%; width:45%; float:left; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Self%20service.jpg" />
        <img alt="in bay" style="height:40%; width:45%; float:right; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_In%20bay%20wash.jpg" />
        <img alt="wax turbo" style="height:40%; width:45%; float:left; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_wax%20turbo%20wash.jpg" />
        <img alt="soap" style="height:40%; width:45%; float:right; margin-left:2.5%; margin-right:2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Soak%20in%20soap.jpg" />


    </main>
    </div>
       <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443 - Bogdan Muntean 101165247 - Matthew Smalley 100973825 - Kyung Woog Steve Min 101024241 - Myles Watson 101061621</p>
    </footer>
</body>
</html>
