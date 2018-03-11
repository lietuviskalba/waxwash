﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 118px;
        }
        .auto-style4 {
            width: 118px;
        }
        .auto-style5 {
            width: 118px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        </style>
</head>
<body>
    <div class="wrapper">
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
        <li class="feedback"><a class="active" href="feedback.aspx">Feedback</a></li>
        <li class="about"><a href="about.aspx">About Us</a></li>
        <li class="login"><a href="login.aspx">Login/register</a></li>
      </ul>
    </div>
    </header>
    <main>
    <form id="form1" runat="server">
    <h3>Give us your feedback!</h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rdlPrice" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback on the price!"></asp:RequiredFieldValidator>
        </h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdlLength" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback on the length of the program!"></asp:RequiredFieldValidator>
        </h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdlCustService" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback on the Customer Service!"></asp:RequiredFieldValidator>
        </h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rdlProgramQual" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback on the program quality!"></asp:RequiredFieldValidator>
        </h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdlOverall" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback overall!"></asp:RequiredFieldValidator>
        </h3>
        <h3 style="width: 495px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdlWebService" Display="Dynamic" ErrorMessage="Ups! You forgot to give us feedback on the Web Services"></asp:RequiredFieldValidator>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="user_id_fk" HeaderText="user_id_fk" SortExpression="user_id_fk" />
                    <asp:BoundField DataField="program_id_fk" HeaderText="program_id_fk" SortExpression="program_id_fk" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
                    <asp:BoundField DataField="cust_service" HeaderText="cust_service" SortExpression="cust_service" />
                    <asp:BoundField DataField="web_service" HeaderText="web_service" SortExpression="web_service" />
                    <asp:BoundField DataField="program_qual" HeaderText="program_qual" SortExpression="program_qual" />
                    <asp:BoundField DataField="overall" HeaderText="overall" SortExpression="overall" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1 %>" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @id" InsertCommand="INSERT INTO [feedback] ([user_id_fk], [program_id_fk], [price], [length], [cust_service], [web_service], [program_qual], [overall], [title], [other]) VALUES (@user_id_fk, @program_id_fk, @price, @length, @cust_service, @web_service, @program_qual, @overall, @title, @other)" ProviderName="<%$ ConnectionStrings:C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDFConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [user_id_fk], [program_id_fk], [price], [length], [cust_service], [web_service], [program_qual], [overall], [title], [other] FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [user_id_fk] = @user_id_fk, [program_id_fk] = @program_id_fk, [price] = @price, [length] = @length, [cust_service] = @cust_service, [web_service] = @web_service, [program_qual] = @program_qual, [overall] = @overall, [title] = @title, [other] = @other WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id_fk" Type="Int32" />
                    <asp:Parameter Name="program_id_fk" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="length" Type="Int32" />
                    <asp:Parameter Name="cust_service" Type="Int32" />
                    <asp:Parameter Name="web_service" Type="Int32" />
                    <asp:Parameter Name="program_qual" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="other" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id_fk" Type="Int32" />
                    <asp:Parameter Name="program_id_fk" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="length" Type="Int32" />
                    <asp:Parameter Name="cust_service" Type="Int32" />
                    <asp:Parameter Name="web_service" Type="Int32" />
                    <asp:Parameter Name="program_qual" Type="Int32" />
                    <asp:Parameter Name="overall" Type="Int32" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="other" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h3>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Terrible&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Decent&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Good&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Excellent&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style3">Price</td>
                    <td class="auto-style2">
                        <asp:RadioButtonList ID="rdlPrice" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Length</td>
                    <td>
                        <asp:RadioButtonList ID="rdlLength" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Customer Service</td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="rdlCustService" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Web Service</td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="rdlWebService" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Program quality</td>
                    <td>
                        <asp:RadioButtonList ID="rdlProgramQual" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Overall</td>
                    <td>
                        <asp:RadioButtonList ID="rdlOverall" runat="server" RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Which program did you use?"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="ddlUsedProgram" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlUsedProgram" Display="Dynamic" ErrorMessage="Please select the program that you had been using"></asp:RequiredFieldValidator>
            </p>
            <p>Comments:</p>
            <p>
                <asp:TextBox id="txtOther" TextMode="multiline" Columns="50" Rows="5" runat="server" /></p>
            <p>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Feedback" Width="121px" />
                <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
            </p>
            <p>

    <button type="button" onclick="clear_button()">Clear</button>
        
    <script>
        function clear_button() {

            var radBttns1 = document.getElementsByName("rdlPrice");
            var radBttns2 = document.getElementsByName("rdlLength");
            var radBttns3 = document.getElementsByName("rdlCustService");
            var radBttns4 = document.getElementsByName("rdlWebService");
            var radBttns5 = document.getElementsByName("rdlOverall");
            var radBttns6 = document.getElementsByName("rdlProgramQual");
            for (var x = 0; x < radBttns1.length; x++) {

                radBttns1[x].checked = false;
                radBttns2[x].checked = false;
                radBttns3[x].checked = false;
                radBttns4[x].checked = false;
                radBttns5[x].checked = false;
                radBttns6[x].checked = false;

            }
            document.getElementById("txtOther").value = "";
            document.getElementById("ddlUsedProgram").selectedIndex = 0;

        }


    </script>
            </p>
        </form>
        </main>
        <footer>
            <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443 - Bogdan Muntean 101165247 - Matthew Smalley 100973825</p>
    </footer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>

    </body>
</html>
