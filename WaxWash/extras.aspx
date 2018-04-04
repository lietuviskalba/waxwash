<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="extras.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [extras] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))" InsertCommand="INSERT INTO [extras] ([name], [price], [description], [image_src]) VALUES (@name, @price, @description, @image_src)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [extras]" UpdateCommand="UPDATE [extras] SET [name] = @name, [price] = @price, [description] = @description, [image_src] = @image_src WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [extras] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))" InsertCommand="INSERT INTO [extras] ([name], [price], [description], [image_src]) VALUES (@name, @price, @description, @image_src)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [extras] WHERE ([id] = @id)" UpdateCommand="UPDATE [extras] SET [name] = @name, [price] = @price, [description] = @description, [image_src] = @image_src WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="296px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
   </asp:Content>

