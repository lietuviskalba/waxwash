<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="extras.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="In order to edit an item please press the edit button. To delete press the delete button. To insert please press the select button on any of the items and then click the new button on the new element that showed up."></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ShowHeader="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="246px" OnItemInserted="DetailsView1_ItemInserted">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
   </asp:Content>

