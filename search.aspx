<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->
	<!-- contact -->
<section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>S</span>earch</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Product Name"></asp:TextBox>

                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Search" />
            </div>
        </div>
    </div>
</section>
   
</asp:Content>

