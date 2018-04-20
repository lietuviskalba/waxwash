<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style5 {
            width: 244px;
        }
        .auto-style6 {
            width: 254px;
            height: 22px;
        }
        .auto-style7 {
            width: 244px;
            height: 22px;
        }
        .auto-style8 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <main>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h1>Log in here!</h1>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Username:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtLoginUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginUsername" ErrorMessage="You need to write your username!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="UsernameRegValidator1" runat="server" ControlToValidate="txtLoginUsername" Display="Dynamic" ErrorMessage="Username must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="UsernameRegValidator2" runat="server" ControlToValidate="txtLoginUsername" Display="Dynamic" ErrorMessage="Insert a username made of letters and digits" ValidationExpression="^([a-zA-Z0-9]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server" Width="200px" OnTextChanged="txtLoginPassword_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="You need to write your password!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator1" runat="server" ControlToValidate="txtLoginPassword" Display="Dynamic" ErrorMessage="Password must be 8 to 16 characters long" ValidationExpression="^([a-zA-Z0-9!*]{8,16})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator2" runat="server" ControlToValidate="txtLoginPassword" Display="Dynamic" ErrorMessage="It must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9*!]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator3" runat="server" ControlToValidate="txtLoginPassword" Display="Dynamic" ErrorMessage="It must contain at least one digit" ValidationExpression=".*[0-9].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="PasswordRegValidator4" runat="server" ControlToValidate="txtLoginPassword" Display="Dynamic" ErrorMessage="It must contain at least one * or ! symbol" ValidationExpression=".*[*!].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="156px" OnClick="btnLogin_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblWarning" runat="server" BorderColor="White" ForeColor="#FF0066"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>Don&#39;t have an account? <a href="register.aspx">Register here !</a></p>
    </main>
</asp:Content>

