<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="J37639_ASG.Admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheet" runat="server">
    <link href="../CSS/add.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <ul>
		<li><a href="Default.aspx">Home</a></li>
		<li><a href="Upload.aspx">Upload</a></li>
		<li><a class="active" href="Add.aspx">Add</a></li>
		<li><a href="List.aspx">Product List</a></li>
		<li><a href="ref.aspx">References</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Add Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Section" runat="server">
    <h2>Let's Start Adding Products!</h2>
    <form id="form1" runat="server">
    <div class="container">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pillow_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            Pillow_ID:
            <asp:Label ID="Pillow_IDLabel1" runat="server" Text='<%# Eval("Pillow_ID") %>' />

            Pillow_Name:
            <asp:TextBox ID="Pillow_NameTextBox" runat="server" Text='<%# Bind("Pillow_Name") %>' />

            Pillow_Price:
            <asp:TextBox ID="Pillow_PriceTextBox" runat="server" Text='<%# Bind("Pillow_Price") %>' />

            Pillow_Quantity:
            <asp:TextBox ID="Pillow_QuantityTextBox" runat="server" Text='<%# Bind("Pillow_Quantity") %>' />

            <asp:LinkButton class="UpdateButton" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" BackColor="#C51D45" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Pillow_ID:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pillow_ID is required" Text="*" ControlToValidate="Pillow_IDTextBox" ValidationGroup="Insert" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Pillow_IDTextBox" runat="server" Text='<%# Bind("Pillow_ID") %>' CssClass="txtbox" />

            Pillow_Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Pillow_Name is required" Text="*" ControlToValidate="Pillow_NameTextBox" ValidationGroup="Insert" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Pillow_NameTextBox" runat="server" Text='<%# Bind("Pillow_Name") %>' CssClass="txtbox"/>

            Pillow_Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Pillow_Price is required" Text="*" ControlToValidate="Pillow_PriceTextBox" ValidationGroup="Insert" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Pillow_PriceTextBox" runat="server" Text='<%# Bind("Pillow_Price") %>' CssClass="txtbox" />

            Pillow_Quantity:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Pillow_Quantity is required" Text="*" ControlToValidate="Pillow_QuantityTextBox" ValidationGroup="Insert" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Pillow_QuantityTextBox" runat="server" Text='<%# Bind("Pillow_Quantity") %>' CssClass="txtbox"/>
            
            <div class="container">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" ValidationGroup="Insert" CommandName="Insert" Text="Insert" CssClass="Button" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="CancelButton" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            Pillow_ID:
            <asp:Label ID="Pillow_IDLabel" runat="server" Text='<%# Eval("Pillow_ID") %>' CssClass="label" />

            Pillow_Name:
            <asp:Label ID="Pillow_NameLabel" runat="server" Text='<%# Bind("Pillow_Name") %>' CssClass="label"/>

            Pillow_Price:
            <asp:Label ID="Pillow_PriceLabel" runat="server" Text='<%# Bind("Pillow_Price") %>' CssClass="label" />

            Pillow_Quantity:
            <asp:Label ID="Pillow_QuantityLabel" runat="server" Text='<%# Bind("Pillow_Quantity") %>' CssClass="label" />
        </ItemTemplate>
    </asp:FormView>
    </div>

    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Insert" HeaderText="Please check the following errors:" runat="server" Font-Names="Courier New" ForeColor="Red" Font-Size="Large" CssClass="validation" Height="77px" Width="414px" />

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
