<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="managelang.aspx.cs" Inherits="managelang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>M</span>anage <span>L</span>anguage</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="Id">

                    <Columns>
                        <asp:BoundField DataField="LangName" HeaderText="LangName" SortExpression="LangName" />
                        <asp:CommandField HeaderText="Update / Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addlang]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [addlang] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [addlang] ([LangName]) VALUES (@LangName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [addlang] SET [LangName] = @LangName WHERE [Id] = @original_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_LangName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LangName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LangName" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_LangName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
   
</asp:Content>

