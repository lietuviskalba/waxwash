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
                        <asp:RadioButton ID="rdoP1" runat="server" Text="1" GroupName="price" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoP2" runat="server" Text="2" GroupName="price" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoP3" runat="server" Text="3" GroupName="price" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoP4" runat="server" Text="4" GroupName="price" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoP5" runat="server" Text="5" GroupName="price" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Length</td>
                    <td>
                        <asp:RadioButton ID="rdoL1" runat="server" Text="1" GroupName="length" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoL2" runat="server" Text="2" GroupName="length" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoL3" runat="server" Text="3" GroupName="length" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoL4" runat="server" Text="4" GroupName="length" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoL5" runat="server" Text="5" GroupName="length" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Customer Service</td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoS1" runat="server" Text="1" GroupName="customerService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoS2" runat="server" Text="2" GroupName="customerService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoS3" runat="server" Text="3" GroupName="customerService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoS4" runat="server" Text="4" GroupName="customerService" OnCheckedChanged="RadioButton21_CheckedChanged" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoS5" runat="server" Text="5" GroupName="customerService" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Web Service</td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoWS1" runat="server" Text="1" GroupName="webService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoWS2" runat="server" Text="2" GroupName="webService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoWS3" runat="server" Text="3" GroupName="webService" OnCheckedChanged="RadioButton16_CheckedChanged" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoWS4" runat="server" Text="4" GroupName="webService" />
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdoWS5" runat="server" Text="5" GroupName="webService" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Program quality</td>
                    <td>
                        <asp:RadioButton ID="rdoPQ1" runat="server" Text="1" GroupName="programQuality" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoPQ2" runat="server" Text="2" GroupName="programQuality" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoPQ3" runat="server" Text="3" GroupName="programQuality" OnCheckedChanged="RadioButton17_CheckedChanged" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoPQ4" runat="server" Text="4" GroupName="programQuality" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoPQ5" runat="server" Text="5" GroupName="programQuality" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Overall</td>
                    <td>
                        <asp:RadioButton ID="rdoO1" runat="server" Text="1" GroupName="overall" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoO2" runat="server" Text="2" GroupName="overall" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoO3" runat="server" Text="3" GroupName="overall" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoO4" runat="server" Text="4" GroupName="overall" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoO5" runat="server" Text="5" GroupName="overall" OnCheckedChanged="RadioButton30_CheckedChanged" />
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
