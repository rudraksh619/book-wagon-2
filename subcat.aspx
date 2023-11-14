<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="subcat.aspx.cs" Inherits="subcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 2px;
        }
        .style3
        {
            width: 859px;
        }
        .style4
        {
            width: 300%;
        }
        .style5
        {
            width: 109px;
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
	    <h3 class="title-txt"><span>S</span>ubcategories</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:ListView ID="ListView1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="col-sm-3 services-right-grid">
					    <div class="se-top">
						    <div class="services-icon-info">
                                <asp:ImageButton ID="ImageButton1" runat="server" Width="170px" Height="200px" 
                                ImageUrl='<%# Eval("image", "images/{0}") %>' 
                                PostBackUrl='<%# Eval("subid", "product.aspx?id={0}") %>' />
                                <h5>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                    PostBackUrl='<%# Eval("subid", "product.aspx?id={0}") %>' 
                                    Text='<%# Eval("subname") %>'></asp:LinkButton>
                                </h5>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [subid], [subname], [image] FROM [subcategory] WHERE ([catid] = @catid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="catid" QueryStringField="id" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>

  
</asp:Content>

