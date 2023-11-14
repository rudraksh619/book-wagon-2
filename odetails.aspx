<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="odetails.aspx.cs" Inherits="odetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>O</span>rder <span>D</span>etails</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="Srno" AllowPaging="True">

                    <Columns>
                        <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                            <ControlStyle Height="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="totalcost" HeaderText="totalcost" SortExpression="totalcost" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addcart] WHERE ([sessionid] = @sessionid)" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [addcart] WHERE [Srno] = @original_Srno AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([totalcost] = @original_totalcost) OR ([totalcost] IS NULL AND @original_totalcost IS NULL)) AND (([sessionid] = @original_sessionid) OR ([sessionid] IS NULL AND @original_sessionid IS NULL)) AND (([bookid] = @original_bookid) OR ([bookid] IS NULL AND @original_bookid IS NULL))" InsertCommand="INSERT INTO [addcart] ([Image], [name], [quantity], [price], [totalcost], [sessionid], [bookid]) VALUES (@Image, @name, @quantity, @price, @totalcost, @sessionid, @bookid)" UpdateCommand="UPDATE [addcart] SET [Image] = @Image, [name] = @name, [quantity] = @quantity, [price] = @price, [totalcost] = @totalcost, [sessionid] = @sessionid, [bookid] = @bookid WHERE [Srno] = @original_Srno AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([totalcost] = @original_totalcost) OR ([totalcost] IS NULL AND @original_totalcost IS NULL)) AND (([sessionid] = @original_sessionid) OR ([sessionid] IS NULL AND @original_sessionid IS NULL)) AND (([bookid] = @original_bookid) OR ([bookid] IS NULL AND @original_bookid IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Srno" Type="Decimal" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Decimal" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                        <asp:Parameter Name="original_bookid" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Decimal" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="sessionid" Type="String" />
                        <asp:Parameter Name="bookid" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="sessionid" QueryStringField="sessid" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Decimal" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="sessionid" Type="String" />
                        <asp:Parameter Name="bookid" Type="Decimal" />
                        <asp:Parameter Name="original_Srno" Type="Decimal" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Decimal" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                        <asp:Parameter Name="original_bookid" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
</asp:Content>

