﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>

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
		<h3 class="title-txt"><span>A</span>dd <span>C</span>ategory</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">

                <asp:TextBox ID="TextBox1" runat="server" placeholder="Category Name" required></asp:TextBox>
                <label>Image</label>
                <asp:FileUpload ID="FileUpload1" runat="server" />

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
                </div>
                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</section>
   
</asp:Content>

