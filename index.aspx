<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img1">
							<div class="container">
								<div class="slider_banner_info_w3ls">
									<h4>Explore  Rent <span> & Learn</span></h4>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img2">
							<div class="container">
								<div class="slider_banner_info_w3ls">
									<h4>Keep <span>Reading</span></h4>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img3">
							<div class="container">
								<div class="slider_banner_info_w3ls">
									<h4>Large collection of <span>E-Books</span></h4>
								</div>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>
		<div class="clearfix"> </div>
		<!-- //Modal1 -->
    <!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>P</span>roducts</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:ListView ID="ListView1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="col-sm-3 services-right-grid">
					    <div class="se-top">
						    <div class="services-icon-info">
                               <%--<a href='<%# Eval("Bid", "detalis.aspx?id={0}") %>'><img class="img-responsive" src='<%# Eval("image", "images/{0}") %>' /></a>--%> 
                                <asp:ImageButton ID="ImageButton1" runat="server" width="180px" Height="200px" 
                                    ImageUrl='<%# Eval("image", "images/{0}") %>' 
                              PostBackUrl='<%# Eval("Bid", "detalis.aspx?id={0}") %>'/> 
                                <h5>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        PostBackUrl='<%# Eval("Bid", "detalis.aspx?id={0}") %>' 
                                        Text='<%# Eval("btitle") %>'></asp:LinkButton>
                                </h5>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT TOP 8 [Bid], [image], [btitle] FROM [addbook] order by newid()">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>

