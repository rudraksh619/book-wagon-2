<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="subupdate.aspx.cs" Inherits="subupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FF6600;
        }
        .style2
        {
            color: #FF6600;
            font-size: xx-large;
        }
        .style3
        {
            color: #FF6600;
            font-size: xx-large;
            font-family: Andalus;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->
	<!-- contact -->
<section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>U</span>pdate <span>S</span>ubcategory</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <label>Choose Category</label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [subid], [subname] FROM [subcategory] WHERE ([catid] = @catid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="catname" 
                DataValueField="catid" OnDataBound="DropDownList1_DataBound">
                </asp:DropDownList>

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Image ID="Image1" runat="server" Width="184px" /><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                </div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</section>
    
</asp:Content>

