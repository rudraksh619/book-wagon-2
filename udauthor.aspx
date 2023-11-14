<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="udauthor.aspx.cs" Inherits="udauthor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>U</span>pdate <span>D</span>elete <span>A</span>uthor</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="AuthorID">

                    <Columns>
                        <asp:BoundField DataField="Authorname" HeaderText="Authorname" SortExpression="Authorname" />
                        <asp:CommandField EditText="Update     " HeaderText="Update/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [author]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [author] WHERE [AuthorID] = @original_AuthorID" InsertCommand="INSERT INTO [author] ([Authorname]) VALUES (@Authorname)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [author] SET [Authorname] = @Authorname WHERE [AuthorID] = @original_AuthorID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_AuthorID" Type="Decimal" />
                        <asp:Parameter Name="original_Authorname" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Authorname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Authorname" Type="String" />
                        <asp:Parameter Name="original_AuthorID" Type="Decimal" />
                        <asp:Parameter Name="original_Authorname" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
</asp:Content>

