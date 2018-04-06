<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BanQuanAo.TrangChu1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slider -->

    <div class="main_slider" style="background-image: url(../Images/slider_1.jpg)">
        <div class="container fill_height">
            <div class="row align-items-center fill_height">
                <div class="col">
                    <div class="main_slider_content">
                        <h6>Bộ sưu tập quần áo mùa hè năm 2018</h6>
                        <h1>Khuyến mại đến 30%</h1>
                        <div class="red_button shop_now_button"><a href="SanPham.aspx">Mua ngay</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Banner -->

    <div class="banner">
        <div class="container">
            <div class="row">
                <asp:ListView runat="server" ID="type">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="banner_item align-items-center" style="background-image: url(../Images/banner_1.jpg)">
                                <div class="banner_category">
                                    <a href="SanPham.aspx">Hàng mới về</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <div class="col-md-4">
                    <div class="banner_item align-items-center" style="background-image: url(../Images/banner_1.jpg)">
                        <div class="banner_category">
                            <a href="KhuyenMai.aspx">Đang giảm giá</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="banner_item align-items-center" style="background-image: url(../Images/aocuoi8.jpg)">
                        <div class="banner_category">
                            <a href="SanPham.aspx">Áo cưới</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="banner_item align-items-center" style="background-image: url(../Images/banner_3.jpg)">
                        <div class="banner_category">
                            <a href="categories.html">Sự kiện trong tuần</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- New Arrivals -->

    <div class="new_arrivals">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title new_arrivals_title">
                        <h2>Khuyến mại mới</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>
                        <asp:DataList ID="sanpham" runat="server" HorizontalAlign="Center"
                            RepeatColumns="4" Width="100%" DataKeyField="Product_ID" RepeatDirection="Horizontal">
                            <ItemTemplate>

                                <div class="product-item <%# DataBinder.Eval(Container.DataItem, "Color") %>">
                                    <div class="product discount product_filter">

                                        <div class="product_image">
                                            <a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">
                                                <asp:Image ID="Image1" runat="server" Height="224px" ImageUrl='<%# "./Images/"+DataBinder.Eval(Container.DataItem, "Image") %>' />
                                            </a>
                                        </div>

                                        <div class="favorite favorite_left"></div>
                                        <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                                        <div class="product_info">
                                            <h6 class="product_name"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>"><%#  DataBinder.Eval(Container.DataItem, "Product_Name") %></a></h6>
                                            <div class="product_price"><%#  int.Parse(DataBinder.Eval(Container.DataItem, "Price_Export").ToString()) - 10 %><span><%#  DataBinder.Eval(Container.DataItem, "Price_Export") %></span></div>
                                        </div>
                                    </div>
                                    <div class="red_button add_to_cart_button"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">Thêm vào giỏ</a></div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
        </div>
        <!-- Deal of the week -->

        <div class="deal_ofthe_week">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="deal_ofthe_week_img">
                            <img src="../Images/deal_ofthe_week.png" alt="" />
                        </div>
                    </div>
                    <div class="col-lg-6 text-right deal_ofthe_week_col">
                        <div class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
                            <div class="section_title">
                                <h2>Khuyến mại khủng trong tuần</h2>
                            </div>
                            <ul class="timer">
                                <li class="d-inline-flex flex-column justify-content-center align-items-center">
                                    <div id="day" class="timer_num">03</div>
                                    <div class="timer_unit">Ngày</div>
                                </li>
                                <li class="d-inline-flex flex-column justify-content-center align-items-center">
                                    <div id="hour" class="timer_num">15</div>
                                    <div class="timer_unit">Giờ</div>
                                </li>
                                <li class="d-inline-flex flex-column justify-content-center align-items-center">
                                    <div id="minute" class="timer_num">45</div>
                                    <div class="timer_unit">Phút</div>
                                </li>
                                <li class="d-inline-flex flex-column justify-content-center align-items-center">
                                    <div id="second" class="timer_num">23</div>
                                    <div class="timer_unit">Giây</div>
                                </li>
                            </ul>
                            <div class="red_button deal_ofthe_week_button"><a href="KhuyenMai.aspx">Mua ngay</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Best Sellers -->

        <div class="best_sellers">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <div class="section_title new_arrivals_title">
                            <h2>Bán chạy nhất</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>
                            <!-- Slide 1 -->
                            <asp:DataList runat="server" ID="listBan" HorizontalAlign="Center"
                                RepeatColumns="4" Width="100%" DataKeyField="Product_ID" RepeatDirection="Horizontal">
                                <ItemTemplate>

                                    <div class="product-item <%# DataBinder.Eval(Container.DataItem, "Color") %>">
                                        <div class="product discount product_filter">

                                            <div class="product_image">
                                                <a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">
                                                    <asp:Image ID="Image1" runat="server" Height="224px" ImageUrl='<%# "./Images/"+DataBinder.Eval(Container.DataItem, "Image") %>' />
                                                </a>
                                            </div>

                                            <div class="favorite favorite_left"></div>
                                            <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                                            <div class="product_info">
                                                <h6 class="product_name"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>"><%#  DataBinder.Eval(Container.DataItem, "Product_Name") %></a></h6>
                                                <div class="product_price"><%#  int.Parse(DataBinder.Eval(Container.DataItem, "Price_Export").ToString()) - 10 %><span><%#  DataBinder.Eval(Container.DataItem, "Price_Export") %></span></div>
                                            </div>
                                        </div>
                                        <div class="red_button add_to_cart_button"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">Xem chi tiết</a></div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                            <!-- Slider Navigation -->

                            <div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
                                <i class="fa fa-chevron-left" aria-hidden="true"></i>
                            </div>
                            <div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="best_sellers">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title new_arrivals_title">
                        <h2>Hàng đang giảm giá</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>
                        <!-- Slide 1 -->
                        <asp:DataList runat="server" ID="listMoi" HorizontalAlign="Center"
                            RepeatColumns="4" Width="100%" DataKeyField="Product_ID" RepeatDirection="Horizontal">
                            <ItemTemplate>

                                <div class="product-item <%# DataBinder.Eval(Container.DataItem, "Color") %>">
                                    <div class="product discount product_filter">

                                        <div class="product_image">
                                            <a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">
                                                <asp:Image ID="Image1" runat="server" Height="224px" ImageUrl='<%# "./Images/"+DataBinder.Eval(Container.DataItem, "Image") %>' />
                                            </a>
                                        </div>
                                        <div class="favorite favorite_left"></div>
                                        <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                                        <div class="product_info">
                                            <h6 class="product_name"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>"><%#  DataBinder.Eval(Container.DataItem, "Product_Name") %></a></h6>
                                            <div class="product_price"><%#  int.Parse(DataBinder.Eval(Container.DataItem, "Price_Export").ToString()) - 10 %><span><%#  DataBinder.Eval(Container.DataItem, "Price_Export") %></span></div>
                                        </div>
                                    </div>
                                    <div class="red_button add_to_cart_button"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">Thêm vào giỏ</a></div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>

                        <!-- Slider Navigation -->

                        <div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
                            <i class="fa fa-chevron-left" aria-hidden="true"></i>
                        </div>
                        <div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
                            <i class="fa fa-chevron-right" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
