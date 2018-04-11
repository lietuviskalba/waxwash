<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="feedb.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @original_id AND [user_id_fk] = @original_user_id_fk AND [program_id_fk] = @original_program_id_fk AND [price] = @original_price AND [length] = @original_length AND [cust_service] = @original_cust_service AND [web_service] = @original_web_service AND [program_qual] = @original_program_qual AND [overall] = @original_overall AND [title] = @original_title AND [other] = @original_other" InsertCommand="INSERT INTO [feedback] ([user_id_fk], [program_id_fk], [price], [length], [cust_service], [web_service], [program_qual], [overall], [title], [other]) VALUES (@user_id_fk, @program_id_fk, @price, @length, @cust_service, @web_service, @program_qual, @overall, @title, @other)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [user_id_fk] = @user_id_fk, [program_id_fk] = @program_id_fk, [price] = @price, [length] = @length, [cust_service] = @cust_service, [web_service] = @web_service, [program_qual] = @program_qual, [overall] = @overall, [title] = @title, [other] = @other WHERE [id] = @original_id AND [user_id_fk] = @original_user_id_fk AND [program_id_fk] = @original_program_id_fk AND [price] = @original_price AND [length] = @original_length AND [cust_service] = @original_cust_service AND [web_service] = @original_web_service AND [program_qual] = @original_program_qual AND [overall] = @original_overall AND [title] = @original_title AND [other] = @original_other">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_user_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_cust_service" Type="Int32" />
            <asp:Parameter Name="original_web_service" Type="Int32" />
            <asp:Parameter Name="original_program_qual" Type="Int32" />
            <asp:Parameter Name="original_overall" Type="Int32" />
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_other" Type="String" />
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
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_user_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_price" Type="Int32" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_cust_service" Type="Int32" />
            <asp:Parameter Name="original_web_service" Type="Int32" />
            <asp:Parameter Name="original_program_qual" Type="Int32" />
            <asp:Parameter Name="original_overall" Type="Int32" />
            <asp:Parameter Name="original_title" Type="String" />
            <asp:Parameter Name="original_other" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="This is just for the admin to analyze the data.. The feedback needs to remain intact, at best deleted"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
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
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    
</asp:Content>

