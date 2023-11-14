<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->

	<!--about-->
<section class="contact">
	<div class="container">
        <h3 class="title-txt"><span>C</span>heckout</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
	             <div class="row">
                    <div class="col-sm-4">
                        <label>Payment Mode</label>
                    </div>
                    <div class="col-sm-8">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    Width="354px">
                        <asp:ListItem>Cash on delivery</asp:ListItem>
                        <asp:ListItem>Credit card</asp:ListItem>
                    </asp:RadioButtonList>
                    </div>
                </div>
                <div class="submit1">
                </div>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:RegularExpressionValidator ID="revCard" runat="server" ErrorMessage="Card number should be 16 digits"
                                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationExpression="^^[0-9]{16}$" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Card No"></asp:TextBox>
                     
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Choose Company Name</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Holder Name"></asp:TextBox>
                    
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Expiry Date"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="CVV should be 3 digits"
                                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationExpression="^^[0-9]{3}$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="CVV"></asp:TextBox>
                    <%--<asp:RegularExpressionValidator runat="server"  ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
                          
                </asp:Panel>

                <asp:TextBox ID="TextBox4" runat="server" Height="114px" TextMode="MultiLine" placeholder="Shipping Address" required></asp:TextBox>

                <div class="submit1">
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Make payment" />
                </div>
            </div>
            <div class="col-sm-6 signup-banner">
                <img src="images/signup-banner.jpg" class="img-responsive text-center" />
            </div>
        </div>
    </div>
</section>
    <table class="style1">
       
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                
            </td>
        </tr>
    </table>
</asp:Content>

