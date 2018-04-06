﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BanQuanAo.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Đăng nhập hệ thống</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Asset/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="../Asset/Admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="../Asset/Admin/dist/css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../Asset/Admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Đăng nhập</h3>
                        </div>
                        <asp:Label runat="server" ID="msg" CssClass="text-center text-danger" Visible="false"></asp:Label>
                        <div class="panel-body">
                            <form id="form1" runat="server" role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="E-mail"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                       
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <asp:CheckBox runat="server" ID="rememberMe" Text="Nhớ mật khẩu"/>
                                            <asp:Label ID="Lb1" Text="" runat="server"></asp:Label>
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                  
                                    <asp:Button ID="Button1" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <!-- jQuery -->
    <script src="../Asset/Admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../Asset/Admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../Asset/Admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../Asset/Admin/dist/js/sb-admin-2.min.js"></script>
</body>
</html>
