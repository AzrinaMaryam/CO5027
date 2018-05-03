<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="J37639_ASG.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="../CSS/list.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a href="Upload.aspx">Upload</a></li>
		<li><a href="Add.aspx">Add</a></li>
		<li><a class="active" href="List.aspx">Product List</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Product List
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Let's Start Making Some Changes!</h2>
    <form id="form1" runat="server">
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="Pillow_ID" DataSourceID="SqlDataSource1" Width="900px" CssClass="gridview" BorderColor="#DEDEDE" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" Font-Size="Large">
        <Columns>
            <asp:BoundField DataField="Pillow_ID" HeaderText="Pillow_ID" ReadOnly="True" SortExpression="Pillow_ID" /> 
            <asp:BoundField DataField="Pillow_Name" HeaderText="Pillow_Name" SortExpression="Pillow_Name" />
            <asp:BoundField DataField="Pillow_Price" HeaderText="Pillow_Price" SortExpression="Pillow_Price" />
            <asp:BoundField DataField="Pillow_Quantity" HeaderText="Pillow_Quantity" SortExpression="Pillow_Quantity" />

            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="Button2" OnClientClick="return confirm('Confirm Delete?');" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                </ItemTemplate>
                <ControlStyle BackColor="#9F906C" BorderStyle="None" CssClass="button" ForeColor="White" />
            </asp:TemplateField>

            <asp:HyperLinkField DataNavigateUrlFields="Pillow_ID" DataNavigateUrlFormatString="Upload.aspx?Pillow_ID={0}" Text="Upload Image" ControlStyle-ForeColor="#C51D45" ControlStyle-CssClass="upload" >
            <ControlStyle CssClass="upload" ForeColor="#C51D45"></ControlStyle>
            </asp:HyperLinkField>
        </Columns>
        <HeaderStyle ForeColor="#C51D45" />
     </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624962_co5027ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Pillow_ID] = @original_Pillow_ID AND [Pillow_Name] = @original_Pillow_Name AND [Pillow_Price] = @original_Pillow_Price AND (([Pillow_Quantity] = @original_Pillow_Quantity) OR ([Pillow_Quantity] IS NULL AND @original_Pillow_Quantity IS NULL))" InsertCommand="INSERT INTO [Product] ([Pillow_ID], [Pillow_Name], [Pillow_Price], [Pillow_Quantity]) VALUES (@Pillow_ID, @Pillow_Name, @Pillow_Price, @Pillow_Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Pillow_Name] = @Pillow_Name, [Pillow_Price] = @Pillow_Price, [Pillow_Quantity] = @Pillow_Quantity WHERE [Pillow_ID] = @original_Pillow_ID AND [Pillow_Name] = @original_Pillow_Name AND [Pillow_Price] = @original_Pillow_Price AND (([Pillow_Quantity] = @original_Pillow_Quantity) OR ([Pillow_Quantity] IS NULL AND @original_Pillow_Quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Pillow_ID" Type="Int32" />
                <asp:Parameter Name="original_Pillow_Name" Type="String" />
                <asp:Parameter Name="original_Pillow_Price" Type="Double" />
                <asp:Parameter Name="original_Pillow_Quantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pillow_ID" Type="Int32" />
                <asp:Parameter Name="Pillow_Name" Type="String" />
                <asp:Parameter Name="Pillow_Price" Type="Double" />
                <asp:Parameter Name="Pillow_Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pillow_Name" Type="String" />
                <asp:Parameter Name="Pillow_Price" Type="Double" />
                <asp:Parameter Name="Pillow_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Pillow_ID" Type="Int32" />
                <asp:Parameter Name="original_Pillow_Name" Type="String" />
                <asp:Parameter Name="original_Pillow_Price" Type="Double" />
                <asp:Parameter Name="original_Pillow_Quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
