<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="J37639_ASG.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="CSS/pillowtalk_default.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a class="active" href="Default.aspx">Home</a></li>
		<li><a href="Product.aspx">Product</a></li>
		<li><a href="Login.aspx">Log In</a></li>
		<li><a href="Contact.aspx">Contacts</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Hello & Welcome!
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Let's Start Shopping!</h2>
    <form id="form1" runat="server">
        <table>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                        <td>
                            <a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><asp:Image ID="Pillow_Image" style="width:200px; height:auto;" ImageUrl='<%#string.Format("Uploads/{0}.jpg", Eval("Pillow_ID")) %>' runat="server" /></a>
                            <p><a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><%#Eval("Pillow_Name")%></a></p>
                            <p><a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>">Bnd$<%#Eval("Pillow_Price")%></a></p>
                            <p><asp:Label ID="Label_Qty" runat="server" Text="Label" ForeColor="#C51D45" Font-Size="Medium" CssClass="label">Quantity:</asp:Label> <a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><%#Eval("Pillow_Quantity")%></a></p>
                        </td>
                </ItemTemplate>
                </asp:Repeater>
            </tr>
            <tr>
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                        <td>
                            <a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><asp:Image ID="Pillow_Image" style="width:200px; height:auto;" ImageUrl='<%#string.Format("Uploads/{0}.jpg", Eval("Pillow_ID")) %>' runat="server" /></a>
                            <p><a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><%#Eval("Pillow_Name")%></a></p>
                            <p><a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>">Bnd$<%#Eval("Pillow_Price")%></a></p>
                            <p><asp:Label ID="Label_Qty" runat="server" Text="Label" ForeColor="#C51D45" Font-Size="Medium">Quantity:</asp:Label> <a href="<%#Eval("Pillow_ID","Product.aspx?Pillow_ID={0}")%>"><%#Eval("Pillow_Quantity")%></a></p>
                        </td>
                </ItemTemplate>
                </asp:Repeater>
            </tr>
        </table>        

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624962_co5027ConnectionString %>" SelectCommand="SELECT TOP 3* FROM [Product] WHERE Pillow_Quantity &gt;= 1 ORDER BY Pillow_ID DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624962_co5027ConnectionString %>" SelectCommand="SELECT TOP 3 * FROM [Product] WHERE Pillow_Quantity &gt;= 1 ORDER BY Pillow_ID"></asp:SqlDataSource>
    </form>

</asp:Content>
