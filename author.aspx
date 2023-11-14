<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="author.aspx.cs" Inherits="author" %>

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
		<h3 class="title-txt"><span>A</span>dd <span>A</span>uthor</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Author Name" required></asp:TextBox>
               

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
                </div>
                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>
            <div class="col-sm-6"></div>

            <div class="clearfix"></div>
        </div>
    </div>
</section>
   
</asp:Content>

