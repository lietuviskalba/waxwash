<%@ Page Title="Index" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
        <img alt="logo" class="auto-style3" src="Images/Better%20images/Logo%20for%20wax%20wash.jpg" /><br />
        <h2 class="text-center">What makes Wax-Wash the best choice to wash your car? </h2>

        <p>
            <span class="auto-style1">At Wax-Wash we understand that your car is more than a mode of transportation to you. All vehicles receive an unparallel attention to detail, utilizing the latest products and techniques to protect your automotive investment and bring out the full beauty and lustre of your vehicle.
            We love cars and we have restored An Canadian Car Wash to its former glory, combining our European expectations of quality with friendly Canadian service and good old-fashioned hard work with sweat and wax. It long stood as Torontos favorite full-service car wash, proudly serving tens of thousands of locals, snowbirds and visitors each year. So please come on down!</span>
        </p>
        <p>&nbsp;</p>
        <img style="margin: 15px 15px 15px 15px;" src="Images/car1.png"/>
        <p>Book a car wash right now and don&#39;t worry about losing time at the premises. Schedule the treatment that your car deserves!</p>

        <p>
            <button class="button" id="btnBookWash" type="button" onclick="location.href='login.aspx'">Book a Wash</button>
            <button class="button" id="btnRegister" type="button" onclick="location.href='register.aspx'">Register</button>

        </p>
        <p>&nbsp;</p>
        <br />
        <br />
        <h1 class="text-center">Car wash options</h1>

        <img alt="full service" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Full%20service.jpg" />
        <img alt="wax" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Wax%20wash%20program.jpg" />
        <img alt="self service" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Self%20service.jpg" />
        <img alt="in bay" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_In%20bay%20wash.jpg" />
        <img alt="wax turbo" style="height: 40%; width: 45%; float: left; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_wax%20turbo%20wash.jpg" />
        <img alt="soap" style="height: 40%; width: 45%; float: right; margin-left: 2.5%; margin-right: 2.5%; margin-bottom: 5%;" src="Images/Better%20images/img_waxwash_Soak%20in%20soap.jpg" />


    </main>
</asp:Content>

