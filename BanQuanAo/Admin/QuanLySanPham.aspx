<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="BanQuanAo.Admin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý sản phẩm</title>
    <style>
        .btn{
            width: 70px;
            margin-bottom: 10px;
        }
        .cls{
            width: 90px;
            margin-top: 10px;
            
        }
        .in{
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-inline">
        <div class="form-group mx-sm-3 mb-2">
            <label for="inputPassword2" class="sr-only">Mã/Tên sản phẩm</label>
            <asp:TextBox runat="server" ID="txtName" CssClass="form-control in" placeholder="Mã/Tên sản phẩm"></asp:TextBox>
        </div>
        <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-primary mb-2 cls" OnClick="btnSearch_Click" Text="Tìm kiếm"></asp:Button>
    </div>

    <div style="width: 300px; float: left; margin-left: 20px;">
        Mã sản phẩm <asp:TextBox runat="server" ID="txtIDSanPham"  CssClass="form-control" Enabled="False" ></asp:TextBox>
        Tên sản phẩm <asp:TextBox runat="server"   ID="txtTenSanPham" CssClass="form-control" ></asp:TextBox>
        Kiểu  <asp:DropDownList runat="server" CssClass ="form-control" ID="drKieu" AppendDataBoundItems="True" AutoPostBack="false"></asp:DropDownList>
        Style <asp:DropDownList runat="server" CssClass ="form-control" ID="drStyle" AppendDataBoundItems="True" AutoPostBack="false" ></asp:DropDownList>
        Nhà sản xuất <asp:DropDownList runat="server" CssClass ="form-control" ID="drNhaXanXuat" AppendDataBoundItems="True" AutoPostBack="false" ></asp:DropDownList>
        Nhà cung cấp <asp:DropDownList runat="server" CssClass ="form-control" ID="drNhaCC" AppendDataBoundItems="True" AutoPostBack="false" ></asp:DropDownList>
        <div>
            <div style="float: left; width: 200px;">
                 Ảnh <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div>
             <div style="float: left; width: 70px">
                 <br />
                  <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btnUpload_Click" />
             </div>
           <div style="clear: both;"></div>
           
        </div>
        
        <asp:Image ID="Image1" runat="server" Height="159px" Width="131px" />
    </div>
    <div style="width: 300px; float: left; margin-left: 20px;">
        Màu <asp:DropDownList runat="server" CssClass ="form-control" ID="drMau" AppendDataBoundItems="True" AutoPostBack="false" >
            <asp:ListItem>Xanh</asp:ListItem>
            <asp:ListItem>Đỏ</asp:ListItem>
            <asp:ListItem>Tím</asp:ListItem>
            <asp:ListItem>Vàng</asp:ListItem>
            <asp:ListItem>Nâu</asp:ListItem>
            <asp:ListItem>Đen</asp:ListItem>
            <asp:ListItem>Trắng</asp:ListItem>
            <asp:ListItem>Kẻ đen</asp:ListItem>
            <asp:ListItem>Xám</asp:ListItem>
            <asp:ListItem>Hồng</asp:ListItem>
        </asp:DropDownList>
        Chất liệu <asp:DropDownList runat="server" CssClass ="form-control" ID="drChatLieu" AppendDataBoundItems="True" AutoPostBack="false" >
            <asp:ListItem>Vải</asp:ListItem>
            <asp:ListItem>Nhung</asp:ListItem>
            <asp:ListItem>Len</asp:ListItem>
            <asp:ListItem>Tuyn</asp:ListItem>
        </asp:DropDownList>
        Size<asp:DropDownList runat="server" CssClass ="form-control" ID="drSize" AppendDataBoundItems="True" AutoPostBack="false" >
        </asp:DropDownList>
        Giá nhập <asp:TextBox runat="server" TextMode="Number"  ID="txtGianhap" CssClass="form-control" ></asp:TextBox>
        Giá xuất <asp:TextBox runat="server"  TextMode="Number"  ID="txtGiaXuat" CssClass="form-control" ></asp:TextBox>
        Số lượng <asp:TextBox runat="server" TextMode="Number"   ID="txtSoLuong" CssClass="form-control" ></asp:TextBox>
        Trọng lượng <asp:TextBox runat="server" TextMode="Number"   ID="txtKhoiLuong" CssClass="form-control" ></asp:TextBox>
        Ưu tiên <asp:TextBox runat="server"   ID="txtOrder" TextMode="Number" CssClass="form-control" ></asp:TextBox>
        Mô tả <asp:TextBox runat="server"   ID="txtDes" CssClass="form-control" ></asp:TextBox>
    </div>
    <div style="width: 70px; float: left; margin-left: 20px;">
        <br />
        <asp:Button runat="server" ID="btnThem" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click" />
        <br />
         <asp:Button runat="server" ID="btnSua" Text="Sửa" CssClass="btn btn-primary" OnClick="btnSua_Click" />
        <br />
         <asp:Button runat="server" ID="btnXoa" Text="Xóa" CssClass="btn btn-primary" OnClick="btnXoa_Click" />
        <br />
         <asp:Button runat="server" ID="btnReset" Text="Reset" CssClass="btn btn-primary" OnClick="btnReset_Click" />
        <br />
    </div>
    <div style="clear: both;"></div>
    <asp:Label runat="server" ID="lbThongBao" ></asp:Label>
    <br />
    <hr />
    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Name" HtmlEncode="false" />
            <asp:BoundField DataField="Type_ID" HeaderText="Type" HtmlEncode="false"/>
            <asp:BoundField DataField="Style_ID" HeaderText="Style" HtmlEncode="false"/>
            <asp:BoundField DataField="Producer_ID" HeaderText="NSX" HtmlEncode="false"/>
            <asp:BoundField DataField="Supplier_ID" HeaderText="NCC" HtmlEncode="false"/>
            <asp:BoundField DataField="Color" HeaderText="Màu" HtmlEncode="false" />
            <asp:BoundField DataField="Material" HeaderText="Chất liệu" HtmlEncode="false" />
            <asp:BoundField DataField="Size" HeaderText="Size" HtmlEncode="false"/>
            <asp:BoundField DataField="Price_Import" HeaderText="Giá nhập" HtmlEncode="false"/>
            <asp:BoundField DataField="Price_Export" HeaderText="Giá xuất" HtmlEncode="false"/>
            <asp:BoundField DataField="Amount" HeaderText="Số lượng" HtmlEncode="false"/>
            <asp:BoundField DataField="Weight" HeaderText="Trọng lượng" HtmlEncode="false"/>
            <asp:BoundField DataField="Image" HeaderText="Ảnh" HtmlEncode="false"/>
            <asp:BoundField DataField="Order" HeaderText="Ưu tiên" HtmlEncode="false" Visible="false"/>
            <asp:BoundField DataField="Description" HeaderText="Mô tả" HtmlEncode="false" Visible="false"/>
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
