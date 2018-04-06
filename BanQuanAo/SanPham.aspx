<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="BanQuanAo.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sản phẩm</title>
        <link href="Asset/Client/styles/categories_styles.css" rel="stylesheet" />
    <link href="Asset/Client/styles/categories_responsive.css" rel="stylesheet" />
    <link href="Asset/Client/plugins/jquery-ui-1.12.1.custom/jquery-ui.css" rel="stylesheet" />
    <link href="Asset/Client/styles/single_styles.css" rel="stylesheet" />

    <link href="Asset/Client/styles/single_responsive.css" rel="stylesheet" />

    <style>
        .input-txt {
            border: 0;
            color: #f6931f;
            font-weight: bold;
        }

        input#ContentPlaceHolder1_TextBox1 {
            width: 50px;
        }

        .cls {
            color: black;
        }
        img{
            height: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container product_section_container">
        <div class="row">
            <div class="col product_section clearfix">
                <!-- Sidebar -->

                <div class="sidebar">
                    <div class="sidebar_section">
                        <div class="sidebar_title">
                            <h5>Danh mục sản phẩm</h5>
                        </div>
                        <ul class="sidebar_categories">
                            <asp:ListView runat="server" ID="catalogList">
                                <ItemTemplate>
                                    <li><a href="SanPham.aspx?catalog=<%# Eval("Style_ID")%>"><%# Eval("Style_Name") %></a></li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>

                    <!-- Price Range Filtering -->
                    <asp:Label runat="server" ID="msg" Visible="false"></asp:Label>
                    <div class="sidebar_section">
                        <div class="quantity d-flex flex-column flex-sm-row align-items-sm-center text-center">
                            <div>Số lượng:</div>

                            <br />
                            <div class="quantity_selector">
                                <asp:Button ID="Prev" runat="server" CssClass="btn btn-primary" Text="-" OnClick="Prev_Click" />
                                <asp:TextBox ID="TextBox1" CssClass="form-control" Text="1" runat="server"></asp:TextBox>
                                <asp:Button ID="Next" CssClass="btn btn-primary" runat="server" Text="+" OnClick="Next_Click" />
                            </div>

                        </div>
                        <asp:Button runat="server" ID="filter" OnClick="filter_Click" CssClass="filter_button" ForeColor="White" Text="Lọc" />
                        <%--                        <div class="filter_button"><span>Lọc</span></div>--%>
                    </div>
                </div>

                <!-- Main Content -->

                <div class="main_content">

                    <!-- Products -->

                    <div class="products_iso">
                        <div class="row">
                            <div class="col">

                                <!-- Product Sorting -->

                                <div class="product_sorting_container product_sorting_container_top">
                                    <ul class="product_sorting">
                                        <li>Sắp xếp theo
                                            <asp:DropDownList runat="server" CssClass="form-control cls" ID="filterList" AppendDataBoundItems="True" AutoPostBack="true" OnSelectedIndexChanged="filterList_SelectedIndexChanged">
                                                <asp:ListItem>Mặc định</asp:ListItem>
                                                <asp:ListItem>Tên sản phẩm(A-Z) </asp:ListItem>
                                                <asp:ListItem>Tên sản phẩm(Z-A) </asp:ListItem>
                                                <asp:ListItem>Giá (Thấp-Cao)</asp:ListItem>
                                                <asp:ListItem>Giá (Cao-Thấp)</asp:ListItem>
                                            </asp:DropDownList>
                                        </li>
                                        <li>Hiển thị
                                            <asp:DropDownList runat="server" CssClass="form-control cls" ID="displayList" AppendDataBoundItems="True" AutoPostBack="true" OnSelectedIndexChanged="displayList_SelectedIndexChanged">
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>16 </asp:ListItem>
                                                <asp:ListItem>32 </asp:ListItem>
                                            </asp:DropDownList>
                                        </li>
                                        <li>Kiểu
                                            <asp:DropDownList runat="server" CssClass="form-control cls" ID="drKieu"
                                                DataTextField="Type_Name" DataValueField="Type_ID"
                                                AppendDataBoundItems="True" AutoPostBack="true" OnSelectedIndexChanged="drKieu_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </li>
                                        <li>Size
                                            <asp:DropDownList runat="server" ID="listSize" DataTextField="Name"
                                                DataValueField="SizeID" CssClass="form-control cls" OnSelectedIndexChanged="listSize_SelectedIndexChanged"></asp:DropDownList>
                                        </li>
                                    </ul>

                                </div>

                                <!-- Product Grid -->

                                <div class="product-grid">
                                    <asp:ListView runat="server" ID="list">
                                        <ItemTemplate>
                                            <div class="product-item <%# Eval("Color") %>">
                                        <div class="product discount product_filter">
                                            <div class="product_image">
                                                <a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">
                                                <img src="./Images/<%# DataBinder.Eval(Container.DataItem, "Image")%>" alt="" />
                                                </a>
                                            </div>
                                            <div class="favorite favorite_left"></div>
                                            
                                            <div class="product_info">
                                                <h6 class="product_name"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">
                                                    <%#  DataBinder.Eval(Container.DataItem, "Product_Name") %>
                                                                         </a></h6>
                                                <div class="product_price"><%#  DataBinder.Eval(Container.DataItem, "Price_Export") %></div>
                                            </div>
                                        </div>
                                        <div class="red_button add_to_cart_button"><a href="<%# "ChiTietSanPham.aspx?Product_ID="+DataBinder.Eval(Container.DataItem, "Product_ID") %>">Xem chi tiết</a></div>
                                    </div>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="container">
                            <div class="text-center">
                                <asp:DataPager ID="pager" runat="server" PagedControlID="list" PageSize="8">
                                <Fields>
                                    <asp:NextPreviousPagerField PreviousPageText="Trước" ShowNextPageButton="false" ShowFirstPageButton="false" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField NextPageText="Tiếp" ShowPreviousPageButton="false" ShowLastPageButton="false" />
                                </Fields>
                            </asp:DataPager>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
