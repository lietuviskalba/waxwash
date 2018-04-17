<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shopPage.aspx.cs" Inherits="shopPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 96px;
        }
        .auto-style4 {
            width: 248px;
            height: 32px;
        }
        .auto-style5 {
            width: 96px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            width: 248px;
            height: 33px;
        }
        .auto-style8 {
            width: 96px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
    </style>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Choose a program"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlWashType" runat="server" Height="16px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id" OnSelectedIndexChanged="ddlWashType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:waxwash2.0ConnectionString %>" SelectCommand="SELECT * FROM [programs]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPric" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="[IMAGE GOES HERE]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblDescriptio" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblDescription" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label9" runat="server" Text="Add extras"></asp:Label>
                    </td>
                    <td class="auto-style8">
        <asp:DropDownList ID="ddlItems" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id">
        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:waxwash2.0ConnectionString %>" SelectCommand="SELECT * FROM [extras]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <asp:Label ID="lbl" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblItemPrice" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <asp:Label ID="lbl2" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblItemDescription" runat="server"></asp:Label>
                    </td>
                    <td>
        <asp:Label ID="Label7" runat="server" Text="[IMAGE GOES HERE]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <asp:Button ID="btnItemAdd" runat="server" Text="Add" OnClick="btnItemAdd_Click" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm Purchase" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </asp:Content>

