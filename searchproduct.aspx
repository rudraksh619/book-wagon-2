<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchproduct.aspx.cs" Inherits="searchproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 130px;
        }
        .style2
        {
            width: 546px;
        }
        .style3
        {
            width: 230px;
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
	    <h3 class="title-txt"><span>S</span>earch <span>P</span>roduct <span>L</span>ist</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="170px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="btitle" HeaderText="Book title" 
                            SortExpression="btitle" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:HyperLinkField DataNavigateUrlFields="bid" 
                            DataNavigateUrlFormatString="detalis.aspx?id={0}" HeaderText="More Details" 
                            Text="More Details" />
                    </Columns>
                    
                    <HeaderStyle CssClass="table-header" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [Bid], [btitle], [price], [image] FROM [addbook] WHERE ([btitle] LIKE '%' + @btitle + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="btitle" QueryStringField="name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
   
</asp:Content>

