<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="J37639_ASG.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="CSS/pillowtalk_contact.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
        <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a href="Product.aspx">Product</a></li>
		<li><a href="Login.aspx">Log In</a></li>
		<li><a class="active" href="Contact.aspx">Contacts</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us!
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <table class="centerTable">
	<tr>
	<td>
	<h2>Send us a Review!</h2>
		<form id="form1" runat="server">
			<div class="container">
                <asp:Label ID="username" runat="server" Text="User Name" CssClass="label"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name is Required" ControlToValidate="name_txtbox" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="name_txtbox" placeholder="Enter Your User Name" runat="server" CssClass="txtbox"></asp:TextBox>

				<asp:Label ID="email" runat="server" Text="Email Address" CssClass="label"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail Address is Required" ControlToValidate="email_txtbox" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="email_txtbox" placeholder="Enter Your E-mail Address" runat="server" CssClass="txtbox"></asp:TextBox>

				<asp:Label ID="message" runat="server" Text="Message" CssClass="label"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Message is Required" ControlToValidate="msg_txtbox" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="msg_txtbox" placeholder="Enter Your Message" runat="server" CssClass="msg_txtbox"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="button" />

                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Please check the following errors:" runat="server" Font-Names="Courier New" ForeColor="Red" Font-Size="Medium" />
                <asp:Label ID="Label1" runat="server" Font-Names="Courier New" ForeColor="#9F906C" Font-Size="Large"></asp:Label>
			</div>
		</form>
	</td>
	<td>
	<!-- Google Map -->
	<h2>Come Visit Us!</h2>
		<div id="map"></div>
		<script>
            function initMap() {
                var uluru = { lat: 4.885731, lng: 114.931669 };
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 18,
                    center: uluru
                });
                var marker = new google.maps.Marker({
                    position: uluru,
                    map: map
                });
            }
		</script>
		<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALrsQu2DJPc_byznaZ4igc_Cc4blHP7-U&callback=initMap">
		</script>
	</td>
	</tr>
	</table>
</asp:Content>
