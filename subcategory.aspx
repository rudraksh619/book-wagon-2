<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="subcategory" %>

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
		<h3 class="title-txt"><span>A</span>dd <span>S</span>ubcategory</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <label>Choose Category</label>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="catname" 
                    DataValueField="catid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>

                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Subcategory Name"></asp:TextBox>
                    <label>Picture</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />

                    <div class="submit1">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
                    </div>
                    <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</section>
   
</asp:Content>

