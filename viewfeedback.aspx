<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

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
	    <h3 class="title-txt"><span>V</span>iew <span>F</span>eedback</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" DataKeyNames="id">

                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="phone" 
                            SortExpression="phone" />
                        <asp:BoundField DataField="aboutweb" HeaderText="Feedback" 
                            SortExpression="aboutweb" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [feedback] WHERE [id] = @original_id" InsertCommand="INSERT INTO [feedback] ([name], [email], [phone], [aboutweb]) VALUES (@name, @email, @phone, @aboutweb)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [feedback] SET [name] = @name, [email] = @email, [phone] = @phone, [aboutweb] = @aboutweb WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([aboutweb] = @original_aboutweb) OR ([aboutweb] IS NULL AND @original_aboutweb IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Decimal" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="Decimal" />
                        <asp:Parameter Name="original_aboutweb" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="Decimal" />
                        <asp:Parameter Name="aboutweb" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="Decimal" />
                        <asp:Parameter Name="aboutweb" Type="String" />
                        <asp:Parameter Name="original_id" Type="Decimal" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="Decimal" />
                        <asp:Parameter Name="original_aboutweb" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
   
</asp:Content>

