<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
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
        }
        .auto-style11 {
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h1 class="auto-style10">Create account here!</h1>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email address:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="You must enter an email address!" Display="Dynamic" ForeColor="#FF3399"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRegisterEmail" Display="Dynamic" ErrorMessage="Please insert a valid email address" ValidationExpression="^(([^&lt;&gt;()\[\]\\.,;:\s@&quot;]+(\.[^&lt;&gt;()\[\]\\.,;:\s@&quot;]+)*)|(&quot;.+&quot;))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Firstname:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtFname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Please enter a username" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Insert a valid firstname" ValidationExpression="^([a-zA-Z]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please enter a lastname" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please insert a valid lastname" ValidationExpression="^([a-zA-Z]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Please enter an address" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegisterUsername" ErrorMessage="You must enter a username!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <span class="auto-style11">r</span></td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRegisterPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegisterPassword" ErrorMessage="You must enter a password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="Password must be 8 to 16 characters long" ValidationExpression="^([a-zA-Z0-9!*]{8,16})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9*!]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one digit" ValidationExpression=".*[0-9].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one * or ! symbol" ValidationExpression=".*[*!].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Repeat password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterRepeatPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegisterRepeatPassword" ErrorMessage="You must repeat your password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRegisterPassword" ControlToValidate="txtRegisterRepeatPassword" Display="Dynamic" ErrorMessage="Passwords must match" ForeColor="#FF0066"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="155px" OnClick="btnRegister_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>Have an account? <a href="login.aspx">Login here!</a></p>
    </main>
</asp:Content>

