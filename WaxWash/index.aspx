<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to wax wash
        </div>
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
        <h1>Welcome to Wax-Wash Car Wash</h1>
        <h4>Take a look around and book a wash</h4>
        <img src="Images/car1.png">

        <button id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
        <button id="btnRegister" type="button" onclick="location.href='login.aspx'">Register</button>

        <p>Something about what we do</p>
        <p>Something about what we do</p>
       

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
