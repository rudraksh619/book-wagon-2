<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="bookupdate.aspx.cs" Inherits="bookupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 68px;
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
		<h3 class="title-txt"><span>U</span>pdate <span>B</span>ook</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <label>Choose Category</label>
  
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [catname], [catid] FROM [category]">
                </asp:SqlDataSource>
                <div class="submit1">
                </div>

                <label>Choose Subcategory</label>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="subname" DataValueField="subid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [subid], [subname] FROM [subcategory] WHERE ([catid] = @catid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                  <label>Choose Language</label>
                <asp:DropDownList ID="DropDownList5" runat="server" 
                    DataSourceID="SqlDataSource5" DataTextField="LangName" DataValueField="Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addlang]"></asp:SqlDataSource>
                <label>Product Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>

                <label>Book Price</label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                <label>Author</label>
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Authorname" 
                    DataValueField="AuthorID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Authorname], [AuthorID] FROM [author]"></asp:SqlDataSource>

                <label>Publisher</label>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="pubid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [name], [pubid] FROM [publisher]"></asp:SqlDataSource>

                    <asp:Image ID="Image1" runat="server" Height="112px" Width="198px" /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />

                 <label>Description</label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>

                <label>Stock</label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click1" />
                </div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
            <div class="col-md-6"></div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>
   
</asp:Content>

