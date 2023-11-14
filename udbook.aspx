<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="udbook.aspx.cs" Inherits="udbook" %>

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
	    <h3 class="title-txt"><span>U</span>pdate <span>B</span>ook</h3>
        <div class="agileits-services">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catid" AutoPostBack="True"></asp:DropDownList>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
            <br /><asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="subname" DataValueField="subid" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [subid], [subname] FROM [subcategory] WHERE ([catid] = @catid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="catid" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%">

                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="btitle" HeaderText="btitle" 
                            SortExpression="btitle" />
                        <asp:HyperLinkField DataNavigateUrlFields="bid" 
                            DataNavigateUrlFormatString="bookupdate.aspx?id={0}" HeaderText="Update" 
                            Text="Update" />
                        <asp:HyperLinkField DataNavigateUrlFields="bid" 
                            DataNavigateUrlFormatString="bookdelete.aspx?id={0}" HeaderText="Delete" 
                            Text="Delete" />
                    </Columns>
                    <HeaderStyle CssClass="table-header" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Bid], [btitle], [image], [price], [catid], [subcatid], [Aemail], [Pemail], [description], [stock] FROM [addbook] WHERE (([subcatid] = @subcatid) AND ([catid] = @catid))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="subcatid" PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
          </div>
        </div>
    </div>
</div>
</asp:Content>

