<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
             <img alt="logo" src="Images/Better%20images/waxwashlogo.png" />
       <br />
        <h2 class="text-center">What makes Wax-Wash the best choice to wash your car? </h2>

        <p>
            <span class="auto-style1">At Wax-Wash we understand that your car is more than a mode of transportation to you. All vehicles receive an unparallel attention to detail, utilizing the latest products and techniques to protect your automotive investment and bring out the full beauty and lustre of your vehicle.
            We love cars and we have restored An Canadian Car Wash to its former glory, combining our European expectations of quality with friendly Canadian service and good old-fashioned hard work with sweat and wax. It long stood as Torontos favorite full-service car wash, proudly serving tens of thousands of locals, snowbirds and visitors each year. So please come on down!</span>
            <br />
            <br />
        </p>
        <img style="margin-left: auto; margin-right: auto; display: block;" src="Images/car1.png"/>
        <p><br />a car wash right now and don&#39;t worry about losing time at the premises. Schedule the treatment that your car deserves!</p>

        <p >
            <button style="margin: 15px 15px 15px 15px; margin-left: auto; margin-right: auto; display: block;" class="button-something" id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
            <button style="margin: 15px 15px 15px 15px; margin-left: auto; margin-right: auto; display: block;" class="button-something" id="btnRegister" type="button" onclick="location.href='register.aspx'">Register</button>
        </p>
        <br />
        <h1 class="text-center">Car wash options</h1>

        <img alt="full service" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/full_service.jpg" />
        <img alt="wax" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/wax_program.png" />
        <img alt="self service" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/self-service.png" />
        <img alt="in bay" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/inbay_wash.png" />
        <img alt="wax turbo" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/turbo_wax.png" />
        <img alt="soap" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/soak_in_soap.png" />
    </main>
    <br />
    <p></p>
</asp:Content>

