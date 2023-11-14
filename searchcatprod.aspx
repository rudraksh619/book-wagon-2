<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchcatprod.aspx.cs" Inherits="searchcatprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 263px;
    }
    .style3
    {
        width: 493px;
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
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Height="174px" Width="100%">

                    <Columns>
                        <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="170px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="catname" HeaderText="catname" 
                            SortExpression="catname" />
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="subcat.aspx?id={0}" HeaderText="More Details" 
                            Text="More Details" />
                    </Columns>
                    
                    <HeaderStyle CssClass="table-header" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [category] WHERE ([catname] LIKE '%' + @catname + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="catname" QueryStringField="name" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
   
</asp:Content>

