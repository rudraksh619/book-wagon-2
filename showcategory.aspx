<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="showcategory.aspx.cs" Inherits="showcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            width: 971px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="nav-justified">
        <tr>
            <td class="style1">
                <strong>sub categories</strong></td>
        </tr>
        <tr>
            <td class="style1">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" class="nav-justified">
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="191px" 
                                        ImageUrl='<%# Eval("image", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("subid", "showproduct.aspx?subid={0}") %>' 
                                        Width="180px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        PostBackUrl='<%# Eval("subid", "showproduct.aspx?catid={0}") %>' 
                                        Text='<%# Eval("subname") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [subname], [image], [subid] FROM [subcategory] WHERE ([catid] = @catid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="catid" QueryStringField="cid" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

