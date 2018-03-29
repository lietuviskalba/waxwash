<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirmationLogin.aspx.cs" Inherits="confirmationLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
        <div>
            <h1>
                <asp:Label ID="lblCongrats" runat="server" Text="Congratulations! You successfully logged in!" ForeColor="#00CC00"></asp:Label>
            </h1>
        </div>
    </main>
</asp:Content>

