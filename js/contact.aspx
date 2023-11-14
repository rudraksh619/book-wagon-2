<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-family: Andalus;
        color: #E38C36;
        font-size: xx-large;
    }
    .style2
    {
        height: 33px;
    }
    .style3
    {
        height: 22px;
    }
    .style4
    {
        height: 46px;
    }
    .style5
    {
        height: 33px;
        width: 288px;
    }
    .style6
    {
        height: 46px;
        width: 288px;
    }
    .style7
    {
        width: 288px;
    }
    .style8
    {
        height: 22px;
        width: 288px;
    }
    .style9
    {
        height: 22px;
        font-weight: bold;
        font-size: x-large;
    }
    .style10
    {
        height: 46px;
        font-weight: bold;
        font-size: x-large;
    }
    .style11
    {
        font-size: x-large;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="nav-justified">
    <tr>
        <td align="left" class="style5">
            &nbsp;</td>
        <td align="left" class="style2" colspan="2">
            <h2 class="style1">
                Contact Us</h2>
        </td>
    </tr>
    <tr>
        <td align="left" class="style5">
            &nbsp;</td>
        <td align="left" class="style2" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style10">
            Name</td>
        <td class="style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style11">
            E-mail</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            Phone</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style11">
            Query</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="Submit" Width="96px" 
                onclick="Button4_Click" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

