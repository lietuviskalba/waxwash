<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shoppingPage.aspx.cs" Inherits="shoppingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 144px;
        }
        .auto-style3 {
            width: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlWashType" runat="server" Height="16px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlAmount" runat="server" Height="16px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="[IMAGE GOES HERE]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblDescription" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" />
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
        <asp:DropDownList ID="ddlItems" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblItemPrice" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="ddlItemAmount" runat="server" Height="16px">
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" Text="[IMAGE GOES HERE]"></asp:Label>
        <br />
        <asp:Label ID="lblItemDescription" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btnItemAdd" runat="server" Text="Add" />
    </form>
</body>
</html>
