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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([f_name], [l_name], [address], [email], [username], [password]) VALUES (@f_name, @l_name, @address, @email, @username, @password)" SelectCommand="SELECT [id], [f_name], [l_name], [address], [email], [username], [password] FROM [users]" UpdateCommand="UPDATE [users] SET [f_name] = @f_name, [l_name] = @l_name, [address] = @address, [email] = @email, [username] = @username, [password] = @password WHERE [id] = @id">
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
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>Don&#39;t have an account? <a href="register.aspx">Register here !</a></p>
    </main>
</asp:Content>

