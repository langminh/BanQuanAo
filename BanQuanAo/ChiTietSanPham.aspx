<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="BanQuanAo.ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Chi tiết sản phẩm</title>
    <link href="Asset/Client/styles/single_styles.css" rel="stylesheet" />

    <link href="Asset/Client/styles/single_responsive.css" rel="stylesheet" />
    <style>
        input#ContentPlaceHolder1_Button4 {
            margin-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container single_product_container">
        <div class="row">
            <div class="col-lg-7">
                <div class="single_product_pics">
                    <div class="row">
                        <div class="col-lg-9 image_col order-lg-2 order-1">
                            <div class="single_product_image">
                                <div class="single_product_image_background">
                                    <asp:Image ID="imgproduct" runat="server" Height="501px" Width="397px" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="product_details">
                    <div class="product_details_title">
                        <h2>
                            <asp:Label ID="lbTenSp" runat="server" Text=""></asp:Label>

                        </h2>
                        <asp:Label ID="lbDes" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="free_delivery d-flex flex-row align-items-center justify-content-center">
                        <span class="ti-truck"></span><span>free ship</span>
                    </div>
                    <div class="product_price"><asp:Label ID="lbPrice" runat="server" Text=""></asp:Label></div>
                    <ul class="star_rating">
                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                    </ul>
                    <div class="quantity d-flex flex-column flex-sm-row align-items-sm-center">
                        <span>Số lượng:</span>
                        
                        <br />
                        <div class="quantity_selector">
                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="-" OnClick="Button3_Click"/>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" Text="1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="+"  OnClick="Button2_Click"/>
                        </div>
                        
                    </div>
                    <div class="text-center"><asp:Label runat="server" ID="msg" Visible="false"></asp:Label></div>
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Text="Thêm vào giỏ hàng" OnClick="Button4_Click" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>
