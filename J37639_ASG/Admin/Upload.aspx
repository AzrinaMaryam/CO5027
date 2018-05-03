<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="J37639_ASG.Admin.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="../CSS/upload.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a class="active" href="Upload.aspx">Upload</a></li>
		<li><a href="Add.aspx">Add</a></li>
		<li><a href="List.aspx">Product List</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Upload Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Let's Start Uploading Images!</h2>
    <form id="form1" runat="server">
		    <div class="container">
                <asp:FileUpload class="FileUpload" ID="FileUpload" runat="server" />
                <asp:Button class="button" ID="Button" runat="server" OnClick="Button_Click" Text="Upload Image" />
                <asp:Label ID="Label" runat="server" Font-Names="Courier New" Font-Size="Large"></asp:Label>
            </div>
    </form>
</asp:Content>
