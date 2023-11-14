<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="orderprods.aspx.cs" Inherits="orderprods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>O</span>rder <span>P</span>roducts</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%">

                    <Columns>
                        <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                            <ControlStyle Height="100px" />
                            <ItemStyle Height="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="totalcost" HeaderText="totalcost" SortExpression="totalcost" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [name], [quantity], [price], [totalcost] FROM [addcart] WHERE ([sessionid] = @sessionid)" OldValuesParameterFormatString="original_{0}">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="sessionid" QueryStringField="sid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
</asp:Content>

