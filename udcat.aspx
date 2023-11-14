<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="udcat.aspx.cs" Inherits="udcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 158px;
        }
        .style3
        {
            width: 670px;
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
	    <h3 class="title-txt"><span>U</span>pdate <span>C</span>ategory</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" CssClass="table" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" Height="288px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged"> 
                    
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="80px" Width="80px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="catname" HeaderText="catname" 
                            SortExpression="catname" />
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="delete.aspx?id={0}" HeaderText="Delete" 
                            Text="Delete"></asp:HyperLinkField>
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="update.aspx?id={0}" HeaderText="Update" 
                            Text="Update" />
                    </Columns>
                    <HeaderStyle CssClass="table-header" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
          
            </div>
        </div>
    </div>
</div>
  
              
</asp:Content>

