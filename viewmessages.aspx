<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewmessages.aspx.cs" Inherits="viewmessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>V</span>iew <span>M</span>essages</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="msgid">

                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="emial" HeaderText="Email" SortExpression="emial" />
                        <asp:BoundField DataField="phone" HeaderText="phone" 
                            SortExpression="phone" />
                        <asp:BoundField DataField="query" HeaderText="query" 
                            SortExpression="query" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contact]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [contact] WHERE [msgid] = @original_msgid" InsertCommand="INSERT INTO [contact] ([name], [emial], [phone], [query]) VALUES (@name, @emial, @phone, @query)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [contact] SET [name] = @name, [emial] = @emial, [phone] = @phone, [query] = @query WHERE [msgid] = @original_msgid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emial] = @original_emial) OR ([emial] IS NULL AND @original_emial IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([query] = @original_query) OR ([query] IS NULL AND @original_query IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_msgid" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emial" Type="String" />
                        <asp:Parameter Name="original_phone" Type="Decimal" />
                        <asp:Parameter Name="original_query" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emial" Type="String" />
                        <asp:Parameter Name="phone" Type="Decimal" />
                        <asp:Parameter Name="query" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emial" Type="String" />
                        <asp:Parameter Name="phone" Type="Decimal" />
                        <asp:Parameter Name="query" Type="String" />
                        <asp:Parameter Name="original_msgid" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emial" Type="String" />
                        <asp:Parameter Name="original_phone" Type="Decimal" />
                        <asp:Parameter Name="original_query" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
   
</asp:Content>

