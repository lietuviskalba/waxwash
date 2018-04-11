<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="programs.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [programs] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [length] = @original_length AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))" InsertCommand="INSERT INTO [programs] ([name], [price], [length], [description], [image_src]) VALUES (@name, @price, @length, @description, @image_src)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [programs]" UpdateCommand="UPDATE [programs] SET [name] = @name, [price] = @price, [length] = @length, [description] = @description, [image_src] = @image_src WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [length] = @original_length AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="In order to edit an item please press the edit button. To delete press the delete button. To insert please press the select button on any of the items and then click the new button on the new element that showed up."></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [programs] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [length] = @original_length AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))" InsertCommand="INSERT INTO [programs] ([name], [price], [length], [description], [image_src]) VALUES (@name, @price, @length, @description, @image_src)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [programs] WHERE ([id] = @id)" UpdateCommand="UPDATE [programs] SET [name] = @name, [price] = @price, [length] = @length, [description] = @description, [image_src] = @image_src WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [length] = @original_length AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_src] = @original_image_src) OR ([image_src] IS NULL AND @original_image_src IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_src" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
            <asp:Parameter Name="original_length" Type="Int32" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_src" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="282px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>

