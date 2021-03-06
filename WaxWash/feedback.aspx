﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
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
        </h3>
        <div>
            <table class="auto-style1">
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
        <p>
            <asp:Label ID="lblFeedbackTitle" runat="server" Text="Title"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTitle" Display="Dynamic" ErrorMessage="Please enter a title for your feedback"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblUsername" runat="server" Text="Username of the user"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please enter your username or any name"></asp:RequiredFieldValidator>
        </p>
        <p>Comments:</p>
        <p>
            <asp:TextBox ID="txtOther" TextMode="multiline" Columns="50" Rows="5" runat="server" />
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Feedback" Width="220px" />
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
                    document.getElementById("txtUsername").value = "";
                    document.getElementById("txtTitle").value = "";

                }


    </script>
        </p>
        <p>

            <asp:Label ID="lblRegister" runat="server"></asp:Label>
        </p>
    </main>
</asp:Content>

