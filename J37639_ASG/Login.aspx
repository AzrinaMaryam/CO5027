<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="J37639_ASG.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="CSS/pillowtalk_login.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a href="Product.aspx">Shop</a></li>
		<li><a class="active" href="Login.aspx">Log In</a></li>
		<li><a href="Contact.aspx">Contacts</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Not a Member? Join Us!
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <form id="form1" runat="server">
        <!-- Register -->
        <div id="register" class="container">
            <h2>Join Us!</h2>

            <asp:Label ID="Label1" runat="server" Text="Email Address" AssociatedControlID="regemail_txtbox" CssClass="label"></asp:Label>
            <asp:TextBox ID="regemail_txtbox" placeholder="Enter Your E-mail Address" runat="server" OnTextChanged="regemail_txtbox_TextChanged" CssClass="txtbox"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Password" AssociatedControlID="regpwd_txtbox" CssClass="label"></asp:Label>
            <asp:TextBox ID="regpwd_txtbox" placeholder="Enter Your Password" runat="server" CssClass="txtbox"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="button" />

            <asp:Label ID="LabelReg" runat="server" Font-Names="Courier New" Font-Size="Large" ForeColor="#9F906C"></asp:Label>
            <asp:Label ID="LabelRegError" runat="server" Font-Names="Courier New" Font-Size="Large" ForeColor="Red"></asp:Label>
        </div>

        <!-- Log In -->
        <div id="login" class="container">
            <h2>Welcome Back!</h2>

            <asp:Label ID="Label3" runat="server" Text="Email" AssociatedControlID="loginemail_txtbox" CssClass="label"></asp:Label>
            <asp:TextBox class="txtbox" ID="loginemail_txtbox" placeholder="Enter Your E-mail Address" runat="server"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Password" AssociatedControlID="loginpwd_txtbox" CssClass="label"></asp:Label>
            <asp:TextBox ID="loginpwd_txtbox" placeholder="Enter Your Password" runat="server" TextMode="Password" CssClass="txtbox"></asp:TextBox>

            <asp:Button ID="Button2" runat="server" Text="Log In" OnClick="Button2_Click" CssClass="button" />
            
            <asp:Label ID="LabelLogin" runat="server" Font-Names="Courier New" Font-Size="Large" ForeColor="#9F906C"></asp:Label>
            <asp:Label ID="LabelLoginError" runat="server" Font-Names="Courier New" Font-Size="Large" ForeColor="Red"></asp:Label>
        </div>
    </form>
</asp:Content>
