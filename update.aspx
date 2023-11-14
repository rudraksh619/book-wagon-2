<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 524px;
        }
        .style2
        {
            width: 220px;
        }
        .style3
        {
            width: 379px;
        }
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
		<h3 class="title-txt"><span>U</span>pdate <span>C</span>ategory</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Image ID="Image1" runat="server" Height="168px" Width="181px" /><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                </div>
                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>
        </div>
    </div>
</section>

   
</asp:Content>

