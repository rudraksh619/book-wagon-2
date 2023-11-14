<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vieworders.aspx.cs" Inherits="vieworders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>V</span>iew <span>O</span>rders</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="orderno">

                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="sessionid" DataNavigateUrlFormatString="orderprods.aspx?sid={0}" DataTextField="orderno" HeaderText="OrderNo" />
                        <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="billamount" HeaderText="billamount" SortExpression="billamount" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:HyperLinkField DataNavigateUrlFields="orderno,status" DataNavigateUrlFormatString="updatestatus.aspx?oid={0}&amp;st={1}" HeaderText="Update Status" Text="Update" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [newpayment] order by orderno desc" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [newpayment] WHERE [orderno] = @original_orderno" InsertCommand="INSERT INTO [newpayment] ([paymentmode], [address], [billamount], [username], [orderdate], [status]) VALUES (@paymentmode, @address, @billamount, @username, @orderdate, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [newpayment] SET [paymentmode] = @paymentmode, [address] = @address, [billamount] = @billamount, [username] = @username, [orderdate] = @orderdate, [status] = @status WHERE [orderno] = @original_orderno AND (([paymentmode] = @original_paymentmode) OR ([paymentmode] IS NULL AND @original_paymentmode IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([billamount] = @original_billamount) OR ([billamount] IS NULL AND @original_billamount IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([orderdate] = @original_orderdate) OR ([orderdate] IS NULL AND @original_orderdate IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_orderno" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="paymentmode" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="billamount" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="orderdate" Type="DateTime" />
                        <asp:Parameter Name="status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="paymentmode" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="billamount" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="orderdate" Type="DateTime" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="original_orderno" Type="Decimal" />
                        <asp:Parameter Name="original_paymentmode" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_billamount" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_orderdate" Type="DateTime" />
                        <asp:Parameter Name="original_status" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
</asp:Content>

