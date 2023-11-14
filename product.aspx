<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 300%;
        }
        .style4
        {
            height: 27px;
        }
        .style6
        {
            height: 27px;
            width: 2131px;
        }
        .style7
        {
            width: 2131px;
        }
        .style8
        {
            width: 100%;
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
	    <h3 class="title-txt"><span>P</span>roducts</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:ListView ID="ListView1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="col-sm-3 services-right-grid">
					    <div class="se-top">
						    <div class="services-icon-info">
                                <asp:ImageButton ID="ImageButton1" runat="server" Width="180px" Height="200px" 
                                    ImageUrl='<%# Eval("image", "images/{0}") %>' 
                                    PostBackUrl='<%# Eval("Bid", "detalis.aspx?id={0}") %>' />
                                <h5>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        PostBackUrl='<%# Eval("Bid", "detalis.aspx?id={0}") %>' 
                                        Text='<%# Eval("btitle") %>'></asp:LinkButton>
                                </h5>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Bid], [image], [btitle] FROM [addbook] WHERE ([subcatid] = @subcatid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="subcatid" QueryStringField="id" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
   
</asp:Content>

