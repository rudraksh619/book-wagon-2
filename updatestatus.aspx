<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatestatus.aspx.cs" Inherits="updatestatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->
	<!-- contact -->
<section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>U</span>pdate <span>S</span>tatus</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <label>Current Status:-</label>
                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label><br />
                <br /><label>Choose New Status</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Choose</asp:ListItem>
                    <asp:ListItem>Confirmed</asp:ListItem>
                    <asp:ListItem>Packed</asp:ListItem>
                    <asp:ListItem>Shipped</asp:ListItem>
                    <asp:ListItem>In-Transit</asp:ListItem>
                    <asp:ListItem>Out for Delivery</asp:ListItem>
                    <asp:ListItem>Delivered</asp:ListItem>
                    <asp:ListItem>Not Accepted</asp:ListItem>
                    <asp:ListItem>Returned Back</asp:ListItem>
                </asp:DropDownList>

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                </div>
                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</section>
   
</asp:Content>

