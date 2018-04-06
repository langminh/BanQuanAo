<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThanhToanTien.aspx.cs" Inherits="BanQuanAo.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thanh toán tiền</title>
    <style>
        input#ContentPlaceHolder1_btnDatHang {
            margin-top: 20px;
        }

        input#ContentPlaceHolder1_Button1 {
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-top: 150px;"></div>
    <div>
        <asp:LinkButton runat="server" Text="Đăng nhập để nhận ngay ưu đãi" CssClass="btn btn-primary" PostBackUrl="~/DangNhap.aspx" />
    </div>
    <div class="col-md-4">
        Phương thức thanh toán
        <asp:DropDownList ID="drThanhToan" CssClass="form-control" runat="server" AppendDataBoundItems="True" AutoPostBack="True"></asp:DropDownList>
        Phương thức vận chuyển
        <asp:DropDownList ID="drVanChuyen" CssClass="form-control" runat="server" AppendDataBoundItems="True" AutoPostBack="True"></asp:DropDownList>
        Họ tên người nhận
        <asp:TextBox ID="txtHoTen" CssClass="form-control" runat="server"></asp:TextBox>
        Địa chỉ nhận
        <asp:TextBox ID="txtDiaChi" CssClass="form-control" runat="server"></asp:TextBox>
        Số điện thoại nhận
        <asp:TextBox ID="txtSoDienThoai" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="btnDatHang" runat="server" CssClass="btn btn-primary" Text="Đặt hàng" OnClick="btnDatHang_Click" />
    </div>

     <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="Color" HeaderText="Màu" />
            <asp:BoundField DataField="Material" HeaderText="Chất liệu" />
            <asp:BoundField DataField="Size" HeaderText="Kích thước" />
            <asp:BoundField DataField="Price_Export" HeaderText="Giá" />
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
