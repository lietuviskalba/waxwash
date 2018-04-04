<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="feedb.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [bookings] WHERE [id] = @original_id AND [client_id_fk] = @original_client_id_fk AND [program_id_fk] = @original_program_id_fk AND [total_price] = @original_total_price" InsertCommand="INSERT INTO [bookings] ([client_id_fk], [program_id_fk], [total_price]) VALUES (@client_id_fk, @program_id_fk, @total_price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [bookings]" UpdateCommand="UPDATE [bookings] SET [client_id_fk] = @client_id_fk, [program_id_fk] = @program_id_fk, [total_price] = @total_price WHERE [id] = @original_id AND [client_id_fk] = @original_client_id_fk AND [program_id_fk] = @original_program_id_fk AND [total_price] = @original_total_price">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_client_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_total_price" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="client_id_fk" Type="Int32" />
            <asp:Parameter Name="program_id_fk" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="client_id_fk" Type="Int32" />
            <asp:Parameter Name="program_id_fk" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Double" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_client_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_total_price" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="client_id_fk" HeaderText="client_id_fk" SortExpression="client_id_fk" />
            <asp:BoundField DataField="program_id_fk" HeaderText="program_id_fk" SortExpression="program_id_fk" />
            <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [bookings] WHERE [id] = @original_id AND [client_id_fk] = @original_client_id_fk AND [program_id_fk] = @original_program_id_fk AND [total_price] = @original_total_price" InsertCommand="INSERT INTO [bookings] ([client_id_fk], [program_id_fk], [total_price]) VALUES (@client_id_fk, @program_id_fk, @total_price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [bookings] WHERE ([id] = @id)" UpdateCommand="UPDATE [bookings] SET [client_id_fk] = @client_id_fk, [program_id_fk] = @program_id_fk, [total_price] = @total_price WHERE [id] = @original_id AND [client_id_fk] = @original_client_id_fk AND [program_id_fk] = @original_program_id_fk AND [total_price] = @original_total_price">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_client_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_total_price" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="client_id_fk" Type="Int32" />
            <asp:Parameter Name="program_id_fk" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="client_id_fk" Type="Int32" />
            <asp:Parameter Name="program_id_fk" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Double" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_client_id_fk" Type="Int32" />
            <asp:Parameter Name="original_program_id_fk" Type="Int32" />
            <asp:Parameter Name="original_total_price" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="282px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="client_id_fk" HeaderText="client_id_fk" SortExpression="client_id_fk" />
            <asp:BoundField DataField="program_id_fk" HeaderText="program_id_fk" SortExpression="program_id_fk" />
            <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>

</asp:Content>

