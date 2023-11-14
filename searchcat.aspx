<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchcat.aspx.cs" Inherits="serach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>S</span>earch <span>B</span>y <span>C</span>ategory</h3>
        <div class="contact-grids">
			<div class="col-md-6 contact-form">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Category Name" AutoComplete="Off"></asp:TextBox>

                <asp:Button ID="Button4" runat="server" Text="Search" onclick="Button4_Click" />
            </div>
        </div>
    </div>
</div>
   
</asp:Content>

