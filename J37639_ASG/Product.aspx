<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="J37639_ASG.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="CSS/pillowtalk_prod.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a class="active" href="Product.aspx">Product</a></li>
		<li><a href="Login.aspx">Log In</a></li>
		<li><a href="Contact.aspx">Contacts</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Product Details
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Love it?</h2>
    <form id="form1" runat="server">
        <asp:Image ID="Pillow_Image" runat="server" Width="280px" ImageAlign="Middle" CssClass="image" alt="Pillow Image"/>

        <asp:DetailsView ID="DetailsView" runat="server" Height="50px" Width="400px" AutoGenerateRows="False" DataKeyNames="Pillow_ID" DataSourceID="SqlDataSource1" BorderStyle="Solid" BorderColor="#DEDEDE" BorderWidth="1px" CellPadding="3" Font-Size="Large" CssClass="detailsview">
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <Fields>
               <asp:TemplateField HeaderText="Pillow_ID" SortExpression="Pillow_ID" HeaderStyle-ForeColor="#C51D45">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pillow_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pillow_ID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Pillow_ID") %>' ></asp:Label>
                    </ItemTemplate>

                <HeaderStyle ForeColor="#C51D45"></HeaderStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Pillow_Name" SortExpression="Pillow_Name" HeaderStyle-ForeColor="#C51D45">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pillow_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pillow_Name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Pillow_Name") %>'></asp:Label>
                    </ItemTemplate>

                <HeaderStyle ForeColor="#C51D45"></HeaderStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Pillow_Price" SortExpression="Pillow_Price" HeaderStyle-ForeColor="#C51D45">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pillow_Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Pillow_Price") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pillow_Price") %>'></asp:Label>
                    </ItemTemplate>

                <HeaderStyle ForeColor="#C51D45"></HeaderStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Pillow_Quantity" SortExpression="Pillow_Quantity" HeaderStyle-ForeColor="#C51D45">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Pillow_Quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Pillow_Quantity") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Pillow_Quantity") %>'></asp:Label>
                    </ItemTemplate>

                <HeaderStyle ForeColor="#C51D45"></HeaderStyle>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624962_co5027ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </form>
</asp:Content>
