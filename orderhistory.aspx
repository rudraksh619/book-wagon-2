<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>O</span>rder <span>H</span>istory</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="orderno" AllowPaging="True">

                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="sessionid" DataNavigateUrlFormatString="odetails.aspx?sessid={0}" DataTextField="orderno" HeaderText="Order No" />
                        <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="billamount" HeaderText="billamount" SortExpression="billamount" />
                        <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sessionid], [orderno], [paymentmode], [address], [billamount], [orderdate], [status] FROM [newpayment] WHERE ([username] = @username)" OldValuesParameterFormatString="original_{0}" OnSelected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label2" runat="server"></asp:Label>
             </div>
        </div>
    </div>
</div>
</asp:Content>

