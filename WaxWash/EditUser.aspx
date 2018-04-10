<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editUser.aspx.cs" Inherits="EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }
        .auto-style2 {
            width: 312px;
        }
        .auto-style4 {
            width: 194px;
            height: 26px;
        }
        .auto-style5 {
            width: 312px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 194px;
            height: 20px;
        }
        .auto-style9 {
            width: 312px;
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            width: 194px;
            height: 22px;
        }
        .auto-style12 {
            width: 312px;
            height: 22px;
        }
        .auto-style13 {
            height: 22px;
        }
        .auto-style14 {
            width: 194px;
            height: 14px;
        }
        .auto-style15 {
            width: 312px;
            height: 14px;
        }
        .auto-style16 {
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>
    <br />
        Change your info here<br />
    </h1>
    <table class="nav-justified">
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">FirstName</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtF_Name" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtF_Name" Display="Dynamic" ErrorMessage="Please enter a username" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtF_Name" Display="Dynamic" ErrorMessage="Insert a valid firstname" ValidationExpression="^([a-zA-Z]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">LastName</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtL_Name" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtL_Name" Display="Dynamic" ErrorMessage="Please enter a lastname" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtL_Name" Display="Dynamic" ErrorMessage="Please insert a valid lastname" ValidationExpression="^([a-zA-Z]{1,})$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtAddress" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Please enter an address" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">Email</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEmail" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="You must enter an email address!" Display="Dynamic" ForeColor="#FF3399"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please insert a valid email address" ValidationExpression="^(([^&lt;&gt;()\[\]\\.,;:\s@&quot;]+(\.[^&lt;&gt;()\[\]\\.,;:\s@&quot;]+)*)|(&quot;.+&quot;))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style14">Passoword</td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Password" />
            </td>
            <td class="auto-style16">
                        </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="btnUpdateInfo" runat="server" OnClick="btnUpdateInfo_Click" style="height: 26px" Text="Update" />
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblUpdateStatus" runat="server" Text="Update status:"></asp:Label>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1 %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
                        <asp:BoundField DataField="l_name" HeaderText="l_name" SortExpression="l_name" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

