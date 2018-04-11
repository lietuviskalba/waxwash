<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditPassword.aspx.cs" Inherits="EditPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <h1>Change password here!</h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Write current password</td>
            <td>
                <asp:TextBox ID="txtCurrPassword" TextMode="Password" runat="server" Width="193px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCurrPassword" Display="Dynamic" ErrorMessage="You  need to write your current password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Write new password</td>
            <td>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"  Width="195px"></asp:TextBox>
            </td>
            <td>
                        <asp:RequiredFieldValidator ID="val1" runat="server" ControlToValidate="txtPassword" ErrorMessage="You must enter a password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="val2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password must be 8 to 16 characters long" ValidationExpression="^([a-zA-Z0-9!*]{8,16})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="val3" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="It must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9*!]*)$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="val4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="It must contain at least one digit" ValidationExpression=".*[0-9].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="val5" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="It must contain at least one * or ! symbol" ValidationExpression=".*[*!].*" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">Repeat old passoword</td>
            <td>
                <asp:TextBox ID="txtPasswordRepeat" TextMode="Password" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td>
                        <asp:RequiredFieldValidator ID="val6" runat="server" ControlToValidate="txtPasswordRepeat" ErrorMessage="You must repeat your password!" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="val7" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordRepeat" Display="Dynamic" ErrorMessage="Passwords must match" ForeColor="#FF0066"></asp:CompareValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="119px" />
            </td>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

