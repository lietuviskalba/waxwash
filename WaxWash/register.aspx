<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">/*
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 254px;
        }

        .auto-style3 {
            width: 254px;
            height: 27px;
        }

        .auto-style4 {
            height: 27px;
        }

        .auto-style5 {
            width: 220px;
        }

        http://localhost:50914/registerNew.aspx .auto-style6 {
            height: 27px;
            width: 244px;
        }
        .auto-style7 {
            width: 254px;
            height: 22px;
        }

        .auto-style8 {
            width: 220px;
            height: 22px;
        }

        .auto-style9 {
            height: 22px;
        }

        .auto-style10 {
            width: 375px;
        }*/

        .form-control{
            font-size: 16px;
          max-height:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
        <div class="row justify-content-md-center">
            <div class="col-md-6 col-lg-4 col-sm-8">
                <h1>Create Account</h1>
                <div class="form-group">
                    <label for="txtRegisterEmail">Email Address:</label>
                    <input runat="server" type="text" class="form-control" ID="txtRegisterEmail" placeholder="yourID@yourdomail.ca" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="EmailReqValidator" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="You must enter an email address!" Display="Dynamic" ForeColor="#FF3399"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegValidator" runat="server" ControlToValidate="txtRegisterEmail" Display="Dynamic" ErrorMessage="Please insert a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtFname">First Name:</label>
                    <input runat="server" type="text" class="form-control" ID="txtFname" placeholder="John" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="FNameReqValidator" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Please enter a firstname" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="FNameRegValidator" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Insert a valid firstname" ValidationExpression="[a-zA-Z]{1,10}" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtLname">Last Name:</label>
                    <input runat="server" type="text" class="form-control" ID="txtLname" placeholder="Doe" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="LNameReqValidator" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please enter a lastname" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="LNameRegValidator" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please insert a valid lastname" ValidationExpression="[a-zA-Z]{1,10}" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtAddress">Address:</label>
                    <input runat="server" type="text" class="form-control" ID="txtAddress" placeholder="1 Bloor street apt 1234" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="AddressReqValidator" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Please enter an address" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtRegisterUsername">Username:</label>
                    <input runat="server" type="text" class="form-control" ID="txtRegisterUsername" placeholder="ImTheBest1337" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="UsernameReqValidator" runat="server" ControlToValidate="txtRegisterUsername" ErrorMessage="You must enter a username!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="This username is taken!" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic" ForeColor="#FF0066"></asp:CustomValidator>
                    <asp:RegularExpressionValidator ID="UsernameRegValidator1" runat="server" ControlToValidate="txtRegisterUsername" Display="Dynamic" ErrorMessage="Username must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="UsernameRegValidator2" runat="server" ControlToValidate="txtRegisterUsername" Display="Dynamic" ErrorMessage="Insert a username made of letters and digits" ValidationExpression="^([a-zA-Z0-9]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtRegisterPassword">Password:</label>
                    <input runat="server" type="password" class="form-control" ID="txtRegisterPassword" required>
                </div>

                <div class="form-group">
                    <asp:RequiredFieldValidator ID="PasswordReqValidator" runat="server" ControlToValidate="txtRegisterPassword" ErrorMessage="You must enter a password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator1" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="Password must be 8 to 16 characters long" ValidationExpression="^([a-zA-Z0-9!*]{8,16})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator2" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9*!]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator3" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one digit" ValidationExpression=".*[0-9].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator4" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one * or ! symbol" ValidationExpression=".*[*!].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtRegisterRepeatPassword">Repeat Password:</label>
                    <input runat="server" type="password" class="form-control" ID="txtRegisterRepeatPassword" required>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="RepeatReqValidator" runat="server" ControlToValidate="txtRegisterRepeatPassword" ErrorMessage="You must repeat your password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="RepeatCompareValidator" runat="server" ControlToCompare="txtRegisterPassword" ControlToValidate="txtRegisterRepeatPassword" Display="Dynamic" ErrorMessage="Passwords must match" ForeColor="#FF0066"></asp:CompareValidator>
                </div>
                <div class="row justify-content-end">
                    <asp:Button ID="btnRegister" type="submit" CssClass="btn btn-success" runat="server" Text="Register" Width="155px" OnClick="btnRegister_Click" />
                </div>
                <p>Have an account? <a href="login.aspx">Login here!</a></p>

            </div>
        </div>
    </main>
</asp:Content>

