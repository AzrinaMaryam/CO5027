<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="J37639_ASG.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="../CSS/index.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a class="active" href="Default.aspx">Home</a></li>
		<li><a href="Upload.aspx">Upload</a></li>
		<li><a href="Add.aspx">Add</a></li>
		<li><a href="List.aspx">Product List</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Hello & Welcome, Admin! 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Let's Begin!</h2>
    <table>
        <tr>
            <th>Upload images here</th>
            <th>Add products here</th>
            <th>Make changes here</th>
        </tr>
        <tr>
            <td><a href="Upload.aspx"><img src="../Images/upload.png" alt="upload icon"/></a></td>
            <td><a href="Add.aspx"><img src="../Images/add.png" alt="add icon"/></a></td>
            <td><a href="List.aspx"><img src="../Images/edit.png" alt="edit icon"/></a></td>
        </tr>
    </table>
</asp:Content>
