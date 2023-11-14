<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="udsubcat.aspx.cs" Inherits="udsubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 152px;
        }
        .style3
        {
            width: 676px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>U</span>pdate <span>S</span>ub <span>C</span>ategory</h3>
		<div class="contact-grids">
			
               <asp:DropDownList runat="server" ID="DropDownList1" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catid"></asp:DropDownList>
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
               <br />
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" CssClass="table">

                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="80px" Width="80px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="subname" HeaderText="subname" 
                            SortExpression="subname" />
                        <asp:HyperLinkField DataNavigateUrlFields="subid" 
                            DataNavigateUrlFormatString="subupdate.aspx?id={0}" HeaderText="Update" 
                            Text="Update" />
                        <asp:HyperLinkField DataNavigateUrlFields="subid" 
                            DataNavigateUrlFormatString="subdelete.aspx?id={0}" HeaderText="Delete" 
                            Text="Delete" />
                    </Columns>
                    <HeaderStyle CssClass="table-header" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [subcategory] WHERE ([catid] = @catid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
               </asp:SqlDataSource>
            </div>
</div>
   </section>
</asp:Content>

