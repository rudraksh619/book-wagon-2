<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

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
		<h3 class="title-txt"><span>S</span>ignup <span>F</span>orm</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <asp:TextBox ID="TextBox1" runat="server" required placeholder="Name"></asp:TextBox>

                <asp:TextBox ID="TextBox2" runat="server" required placeholder="Email......" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email is Required Field" 
                    ForeColor="#93C83F"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format" 
                    ForeColor="#93c83f" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                   <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Password" required></asp:TextBox>
                   <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" required placeholder="Confirm Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Password Mismatch" ForeColor="#93C83F"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="revCard" runat="server" ErrorMessage="phone number should be 10 digits"
                                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationExpression="^^[0-9]{10}$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Phone no" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Phone no is not in correct Format" 
                    ForeColor="#93c83f" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Choose Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>U.S.A</asp:ListItem>
                        <asp:ListItem>U.K</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Choose Country"  InitialValue="Choose Country" 
                    ControlToValidate="DropDownList1" ForeColor="#93C83F"></asp:RequiredFieldValidator>
                    <div class="row">
                        <div class="col-sm-4">
                            <label>Gender</label>
                        </div>
                        <div class="col-sm-8">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" Text="Male" />&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="Female" />
                        </div>
                    </div>
                   
                    
                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sign Up" />
                </div>
                <asp:Label ID="Label1" runat="server" ForeColor="#93C83F"></asp:Label>
            </div>
            <div class="col-sm-6 signup-banner">
                <img src="images/signup-banner.jpg" class="img-responsive text-center" />
            </div>
        </div>
    </div>
</section>
   
</asp:Content>

