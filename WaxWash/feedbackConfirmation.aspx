<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedbackConfirmation.aspx.cs" Inherits="feedbackConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <main>
        <div>
            &nbsp;
            <h1>
            <asp:Label ID="lblFeedback" runat="server" Text="&nbsp;Thank you for completing the survey. Your feedback is submitted..." ForeColor="#009933"></asp:Label>
            </h1>
        </div>
    </main>
</asp:Content>

