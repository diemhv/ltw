<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication.pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Category Area -->
    <section class="htc__category__area ptb--100">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section__title--2 text-center">
                        <h2 class="title__line">Danh sách sản phẩm</h2>
                    </div>
                </div>
            </div>
            <div class="htc__product__container">
                <div class="row">
                    <div class="product__list clearfix mt--30">
                        <asp:Repeater ID="rptProducts" runat="server">  
                            <ItemTemplate> 
                                <!-- Start Single Category -->
                                <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                    <div class="category">
                                        <div class="ht__cat__thumb">
                                            <a href="Product-details.aspx?id=<%# Eval("Id") %>">
                                                <img src='<%# Eval("ImageURL") %>' alt="product images">
                                            </a>
                                        </div>
                                        <div class="fr__hover__info">
                                            <ul class="product__action">
                                                <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                                <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>

                                                <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="fr__product__inner">
                                            <h4><a href="product-details.html"><%# Eval("Name") %></a></h4>
                                            <ul class="fr__pro__prize">
                                                <li>$<%# Eval("Price") %></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Category -->
                            </ItemTemplate>
                        </asp:Repeater> 
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Category Area -->
</asp:Content>
