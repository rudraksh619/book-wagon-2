<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listofuser.aspx.cs" Inherits="listofuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 166px;
        }
        .style2
        {
            width: 705px;
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
	    <h3 class="title-txt"><span>L</span>ist <span>o</span>f <span>U</span>sers</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%">

                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="contact" HeaderText="contact" 
                            SortExpression="contact" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                        <HeaderStyle CssClass="table-header" />    
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signup] WHERE ([utype] = @utype)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [signup] WHERE [email] = @original_email AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([contact] = @original_contact) OR ([contact] IS NULL AND @original_contact IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([utype] = @original_utype) OR ([utype] IS NULL AND @original_utype IS NULL))" InsertCommand="INSERT INTO [signup] ([name], [email], [password], [contact], [city], [gender], [utype]) VALUES (@name, @email, @password, @contact, @city, @gender, @utype)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [signup] SET [name] = @name, [password] = @password, [contact] = @contact, [city] = @city, [gender] = @gender, [utype] = @utype WHERE [email] = @original_email AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([contact] = @original_contact) OR ([contact] IS NULL AND @original_contact IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([utype] = @original_utype) OR ([utype] IS NULL AND @original_utype IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_contact" Type="Decimal" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_utype" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="contact" Type="Decimal" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="utype" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="normal" Name="utype" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="contact" Type="Decimal" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="utype" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_contact" Type="Decimal" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_utype" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </div>
        </div>
    </div>
</div>
   
</asp:Content>

