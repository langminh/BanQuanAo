<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BanQuanAo.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Giỏ hàng</title>
    <style>
        .cls{
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="form-inline">
        <div class="col-md-3">
            <div class="form-group mb-5">
                <asp:TextBox ID="TextBox1" placeholder="Nhập tên" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="TextBox2" placeholder="Số lượng" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group mb-5">
                <asp:Button ID="Button1" runat="server" Text="Xóa" CssClass="btn btn-danger cls" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Thêm số lượng" CssClass="btn btn-primary cls" OnClick="Button2_Click" />
                <asp:LinkButton runat="server" PostBackUrl="~/TrangChu.aspx" Text="Tiếp tục mua hàng" CssClass="btn btn-success cls"></asp:LinkButton>
                <asp:Button ID="btnThanhToan" runat="server" Text="Đặt Hàng" CssClass="btn btn-primary cls" OnClick="btnThanhToan_Click" />
            </div>
        </div>
    </div>

    <asp:HiddenField runat="server" ID="product_id"/>

    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="Color" HeaderText="Màu" />
            <asp:BoundField DataField="Material" HeaderText="Chất liệu" />
            <asp:BoundField DataField="Size" HeaderText="Kích thước" />
            <asp:BoundField DataField="Price_Export" HeaderText="Giá" />
            <asp:BoundField DataField="Quantium" HeaderText="Số lượng" />
            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
