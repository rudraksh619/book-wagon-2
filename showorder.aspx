<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="showorder.aspx.cs" Inherits="showorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .services-right-grids .row .col-sm-12
       {
           padding: 15px 0px;
       }
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
	    <h3 class="title-txt"><span>P</span>lace <span>O</span>rder</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <div class="row">
                    <div class="col-sm-12">
                        <h3>Thanks for placing your order.</h3>
                    </div>
                    <div class="col-sm-12">
                        <h4>Your order no is. <asp:Label ID="Label2" runat="server"></asp:Label></h4>
                    </div>
                    <div class="col-sm-12">
                        <h4>Your total bill is. <asp:Label ID="Label3" runat="server"></asp:Label></h4>
                    </div>
                    <div class="col-sm-12">
                        <h4>Your shipping address is <asp:Label ID="Label4" runat="server"></asp:Label></h4>
                    </div>
                </div>
            </div> 
         </div>
    </div>
</div>
   
</asp:Content>

