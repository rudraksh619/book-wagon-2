<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="udpublisher.aspx.cs" Inherits="udpublisher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>U</span>pdate <span>D</span>elete <span>P</span>ublisher</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="pubid">

                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Publisher Name" SortExpression="name" />
                        <asp:CommandField DeleteText="Delete      " EditText="Update           " HeaderText="Update/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [publisher]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [publisher] WHERE [pubid] = @original_pubid" InsertCommand="INSERT INTO [publisher] ([name]) VALUES (@name)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [publisher] SET [name] = @name WHERE [pubid] = @original_pubid">
                    <DeleteParameters>
                        <asp:Parameter Name="original_pubid" Type="Decimal" />
                        <asp:Parameter Name="original_name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="original_pubid" Type="Decimal" />
                        <asp:Parameter Name="original_name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
</asp:Content>

