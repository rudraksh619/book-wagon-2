	

<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
		<h3 class="title-txt"><span>L</span>ogin</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
				<asp:TextBox ID="TextBox1" runat="server" required placeholder="Username" autocomplete="off"></asp:TextBox>
				<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required placeholder="Password"></asp:TextBox>
				

				<div class="submit1">
					<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
				</div>
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
			</div>
            <div class="col-sm-6">
                <img src="images/login-banner.jpg" />
            </div>
        </div>
    </div>
</section>
   
</asp:Content>

