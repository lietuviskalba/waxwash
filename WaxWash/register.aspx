<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title></title>
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
            width: 244px;
        }
            http://localhost:50914/register.aspx .auto-style6 {
                height: 27px;
                width: 244px;
            }
            .auto-style7 {
                width: 254px;
                height: 22px;
            }
            .auto-style8 {
                width: 244px;
                height: 22px;
            }
            .auto-style9 {
                height: 22px;
            }
    </style>
</head>
<body>
<header>
    <%--
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <ul class="nav navbar-nav" >
                <li role="presentation"><a href="index.aspx">Home</a></li>
                <li role="presentation"><a href="info.aspx">Information Page</a></li>
                <li role="presentation"><a href="feedback.aspx">Feedback</a></li>
                <li role="presentation"><a href="about.aspx">About us</a></li>
                <li role="presentation"><a href="login.aspx">Login/registration</a></li>
            </ul>
        </div>
    </nav>
         --%>
    <div class="nav">
      <ul>
        <li class="home"><a href="index.aspx">Home</a></li>
        <li class="information"><a href="info.aspx">Information</a></li>
        <li class="feedback"><a href="feedback.aspx">Feedback</a></li>
        <li class="about"><a href="about.aspx">About Us</a></li>
        <li class="login"><a class="active" href="login.aspx">Login/register</a></li>
      </ul>
    </div>
</header>
    <main></main>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        Create account here!<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:waxwashConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([f_name], [l_name], [address], [email], [password]) VALUES (@f_name, @l_name, @address, @email, @password)" ProviderName="<%$ ConnectionStrings:waxwashConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [f_name], [l_name], [address], [email], [password] FROM [users]" UpdateCommand="UPDATE [users] SET [f_name] = @f_name, [l_name] = @l_name, [address] = @address, [email] = @email, [password] = @password WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="f_name" Type="String" />
                                <asp:Parameter Name="l_name" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="f_name" Type="String" />
                                <asp:Parameter Name="l_name" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                                <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
                                <asp:BoundField DataField="l_name" HeaderText="l_name" SortExpression="l_name" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([f_name], [l_name], [address], [email], [username], [password]) VALUES (@f_name, @l_name, @address, @email, @username, @password)" ProviderName="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [f_name], [l_name], [address], [email], [username], [password] FROM [users]" UpdateCommand="UPDATE [users] SET [f_name] = @f_name, [l_name] = @l_name, [address] = @address, [email] = @email, [username] = @username, [password] = @password WHERE [id] = @id">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegisterEmail" ErrorMessage="You must enter an email address!" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRegisterEmail" Display="Dynamic" ErrorMessage="Please insert a valid email address" ValidationExpression="^(([^&lt;&gt;()\[\]\\.,;:\s@&quot;]+(\.[^&lt;&gt;()\[\]\\.,;:\s@&quot;]+)*)|(&quot;.+&quot;))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Firstname:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtFname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Please enter a username"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Insert a valid firstname" ValidationExpression="^([a-zA-Z]{1,})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please enter a lastname"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Please insert a valid lastname" ValidationExpression="^([a-zA-Z]{1,})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Please enter an address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtRegisterUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegisterUsername" ErrorMessage="You must enter a username!"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="This username is taken!" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtRegisterUsername" Display="Dynamic" ErrorMessage="Username must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9]*)$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtRegisterUsername" Display="Dynamic" ErrorMessage="Insert a username made of letters and digits" ValidationExpression="^([a-zA-Z0-9]{1,})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRegisterPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegisterPassword" ErrorMessage="You must enter a password!"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="Password must be 8 to 16 characters long" ValidationExpression="^([a-zA-Z0-9!*]{8,16})$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must start with a letter" ValidationExpression="^([a-zA-Z]{1}[a-zA-Z0-9*!]*)$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one digit" ValidationExpression=".*[0-9].*"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtRegisterPassword" Display="Dynamic" ErrorMessage="It must contain at least one * or ! symbol" ValidationExpression=".*[*!].*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Repeat password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtRegisterRepeatPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegisterRepeatPassword" ErrorMessage="You must repeat your password!" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRegisterPassword" ControlToValidate="txtRegisterRepeatPassword" Display="Dynamic" ErrorMessage="Passwords must match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="155px" OnClick="btnRegister_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>Have an account? <a href="login.aspx">Login here!</a></p>
        <!-- 
    <footer>
        <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>
            -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyLocalDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [UserLogin] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserLogin] ([username], [password], [email]) VALUES (@username, @password, @email)" ProviderName="<%$ ConnectionStrings:MyLocalDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [username], [password], [email] FROM [UserLogin]" UpdateCommand="UPDATE [UserLogin] SET [username] = @username, [password] = @password, [email] = @email WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        </body>
</html>
