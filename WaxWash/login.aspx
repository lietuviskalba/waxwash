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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:waxwash2.0ConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([f_name], [l_name], [address], [email], [username], [password]) VALUES (@f_name, @l_name, @address, @email, @username, @password)" ProviderName="<%$ ConnectionStrings:waxwash2.0ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [f_name], [l_name], [address], [email], [username], [password] FROM [users]" UpdateCommand="UPDATE [users] SET [f_name] = @f_name, [l_name] = @l_name, [address] = @address, [email] = @email, [username] = @username, [password] = @password WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="f_name" Type="String" />
            <asp:Parameter Name="l_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="f_name" Type="String" />
            <asp:Parameter Name="l_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
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
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="You need to write your password!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
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

