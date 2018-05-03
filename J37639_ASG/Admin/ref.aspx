<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Site.Master" AutoEventWireup="true" CodeBehind="ref.aspx.cs" Inherits="J37639_ASG.Admin._ref" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="../CSS/ref.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a href="Upload.aspx">Upload</a></li>
		<li><a href="Add.aspx">Add</a></li>
		<li><a href="List.aspx">Product List</a></li>
		<li><a class="active" href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    References
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>References below are based on the Documentation</h2>
    <img src="../Images/ref.png" alt="references"/>
</asp:Content>
