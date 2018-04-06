<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BanQuanAo.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng nhập</title>
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
    <div class="container">
        <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h3>Đăng nhập</h3>
                    </div>
                    <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Quên mật khẩu?</a></div>
                </div>

                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="loginform" class="form-horizontal" role="form">
                        <asp:Label runat="server" ID="msg" CssClass="text-center text-danger" Visible="false"></asp:Label>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox runat="server" ID="txtusername" TextMode="SingleLine" CssClass="form-control" placeholder="e-mail hoặc tên đăng nhập"></asp:TextBox>
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox runat="server" ID="txt_pass" TextMode="Password" CssClass="form-control" placeholder="Mật khẩu"></asp:TextBox>
                        </div>



                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="ckb_remember" runat="server" Text="Ghi nhớ đăng nhập"></asp:CheckBox>
                                </label>
                            </div>
                        </div>
                        <div style="margin-top: 10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <asp:Button runat="server" ID="btn_login" CssClass="btn btn-success" Text="Đăng nhập" OnClick="btnLogin_Click"></asp:Button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                    Bạn chưa có tài khoản! 
                                       
                                    <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()">Bấm đây để đăng ký ngay
                                        </a>
                                </div>
                            </div>
                        </div>
                    </form>



                </div>
            </div>
        </div>
        <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h3>Đăng ký tài khoản</h3>
                    </div>
                    <div style="float: right; font-size: 85%; position: relative; top: -10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Đăng nhập</a></div>
                </div>
                <div class="panel-body">
                    <form id="signupform" class="form-horizontal" role="form">

                        <div id="signupalert" style="display: none" class="alert alert-danger">
                            <p>Lỗi:</p>
                            <span></span>
                        </div>



                        <div class="form-group">
                            <label for="email" class="col-md-9 control-label">Tên đăng nhập</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txt_userNameReg" CssClass="form-control" TextMode="SingleLine" placeholder="E-mail hoặc tên đăng nhập"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-md-3 control-label">Tên</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txt_NameReg" CssClass="form-control" TextMode="SingleLine" placeholder="Tên"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="firstname" class="col-md-3 control-label">Email</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txt_EmailReg" CssClass="form-control" TextMode="SingleLine" placeholder="Email"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="password" class="col-md-3 control-label">Mật khẩu</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txt_PassReg" CssClass="form-control" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="col-md-9 control-label">Nhập lại mật khẩu</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txt_RePassReg" CssClass="form-control" TextMode="Password" placeholder="Nhập lại mật khẩu"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-md-9 control-label">Địa chỉ</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtAddressReg" CssClass="form-control" placeholder="Địa chỉ"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-md-9 control-label">Số điện thoại</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtPhonReg" CssClass="form-control" TextMode="Number" placeholder="Số điện thoại"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <asp:Button ID="btn_signup" runat="server" CssClass="btn btn-info" Text="Đăng ký" OnClick="btn_signup_Click"></asp:Button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
