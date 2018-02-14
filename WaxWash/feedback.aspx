<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style7 {
            width: 655px;
            height: 182px;
        }
    </style>
</head>
<body>
            <header>
        <ul>
            <a href="index.aspx"><li>Home</li></a>
            <a href="info.aspx"><li>Information Page</li></a>
            <a href="feedback.aspx"><li>Feedback</li></a>
            <a href="about.aspx"><li>About us</li></a>
            <a href="login.aspx"><li>Login/Register</li></a>
            </ul>
    </header>
    <main></main>
    <h3>Give us your feedback!</h3>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Terrible</td>
                    <td class="auto-style2">Bad</td>
                    <td class="auto-style2">Decent</td>
                    <td class="auto-style2">Good</td>
                    <td class="auto-style2">Excellent</td>
                </tr>
                <tr>
                    <td class="auto-style3">Price</td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="1" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton7" runat="server" Text="2" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton13" runat="server" Text="3" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton19" runat="server" Text="4" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton25" runat="server" Text="5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Length</td>
                    <td>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="1" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton8" runat="server" Text="2" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton14" runat="server" Text="3" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton20" runat="server" Text="4" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton26" runat="server" Text="5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Customer Service</td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="1" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton9" runat="server" Text="2" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton15" runat="server" Text="3" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton21" runat="server" Text="4" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton27" runat="server" Text="5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Web Service</td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton4" runat="server" Text="1" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton10" runat="server" Text="2" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton16" runat="server" Text="3" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton22" runat="server" Text="4" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="RadioButton28" runat="server" Text="5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Program quality</td>
                    <td>
                        <asp:RadioButton ID="RadioButton5" runat="server" Text="1" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton11" runat="server" Text="2" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton17" runat="server" Text="3" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton23" runat="server" Text="4" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton29" runat="server" Text="5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Overall</td>
                    <td>
                        <asp:RadioButton ID="RadioButton6" runat="server" Text="1" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton12" runat="server" Text="2" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton18" runat="server" Text="3" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton24" runat="server" Text="4" />
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton30" runat="server" Text="5" />
                    </td>
                </tr>
            </table>
        </div>
        <footer>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Which program did you used?"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="ddlUsedProgram" runat="server">
                </asp:DropDownList>
            </p>
            <p>Comments:</p>
            <p>
                <textarea id="txaOther" class="auto-style7" name="S1"></textarea></p>
            <p>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Feedback" Width="121px" />
            </p>
            <p>
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Reset" Width="121px" />
            </p>
            <p>Copyright WaxWash Car Wash</p>
        <p>Mantas Lingaitis 101165443</p>
        <p>Bogdan Muntean 101165247</p>
        <p>Matthew Smalley 100973825</p>
    </footer>

    </form>
        
</body>
</html>
