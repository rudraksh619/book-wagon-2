﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->
    
    <section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>C</span>ontact Us</h3>
		<div class="contact-grids">
			<div class=" col-md-6 contact-form">
			<h4 class="heading">Get In Touch</h4>
				
					<asp:TextBox ID="TextBox1" runat="server" required="" placeholder="Name"></asp:TextBox>
				   <asp:TextBox ID="TextBox2" runat="server" required placeholder="Email......" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email is Required Field" 
                    ForeColor="#93C83F"></asp:RequiredFieldValidator>
				 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format" 
                    ForeColor="#93c83f" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				
			   <asp:RegularExpressionValidator ID="revCard" runat="server" ErrorMessage="phone number should be 10 digits"
                                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationExpression="^^[0-9]{10}$" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
					<asp:TextBox ID="TextBox3" runat="server" required="" placeholder="Phone no"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" required="" placeholder="Query"></asp:TextBox>
					<div class="submit1">
						<asp:Button ID="Button4" runat="server" Text="Submit" onclick="Button4_Click" />
					</div>
                    <label><asp:Label ID="Label2" runat="server"></asp:Label></label>
				
			</div>
            <div class="col-md-6">
                <img src="images/contactus.jpg" />
            </div>
        </div>
    </div>
    </section>
    
</asp:Content>

