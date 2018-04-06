<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="BanQuanAo.LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Liên hệ</title>
    <link href="Asset/Client/styles/contact_styles.css" rel="stylesheet" />
    <link href="Asset/Client/styles/contact_responsive.css" rel="stylesheet" />
    <link href="Asset/Client/plugins/themify-icons/themify-icons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">

            <!-- Breadcrumbs -->

            <div class="breadcrumbs d-flex flex-row align-items-center">
            </div>

        </div>
    </div>

    <!-- Map Container -->

    <div class="row">
        <div class="col">
            <div id="google_map">
                <div class="map_container">
                    <img src="./Images/Capture.JPG" />
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Us -->

    <div class="row">
        <div class="col-lg-6 contact_col">
            <div class="contact_contents">
                <h1>Liên hệ ngay</h1>
                <p>Có rất nhiều cách để có thể liên hệ với chúng tôi. Bạn có thể liên hệ qua e-mail, điện thoại, hoặc theo dõi chúng tôi 
                    trên fanpage <a href="fb.com">Facebook</a>, <a href="twitter.com">Twetter</a>, choose what suits you the most.</p>
                <div>
                    <p>(800) 686-6688</p>
                    <p>info.deercreative@gmail.com</p>
                </div>
                <div>
                    <p>Giờ mở cửa: 8h - 21h Từ thứ 2 đến thứ chủ nhật</p>
                </div>
            </div>

            <!-- Follow Us -->

            <div class="follow_us_contents">
                <h1>Theo dõi chúng tôi</h1>
                <ul class="social d-flex flex-row">
                    <li><a href="fb.com" style="background-color: #3a61c9"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="twitter.com" style="background-color: #41a1f6"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="plus.google.com" style="background-color: #fb4343"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    <li><a href="instagram.com" style="background-color: #8f6247"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>

        </div>

        <div class="col-lg-6 get_in_touch_col">
            <div class="get_in_touch_contents">
                <h1>Cho chúng tôi biết suy nghĩ của bạn!</h1>
                <p>Mời bạn vui lòng điền các trường thông tin bên dưới</p>
                <form>
                    <div>
                        <input id="input_name" class="form_input input_name input_ph" type="text" name="name" placeholder="Name" required="required" data-error="Name is required." />
                        <input id="input_email" class="form_input input_email input_ph" type="email" name="email" placeholder="Email" required="required" data-error="Valid email is required." />
                        <input id="input_website" class="form_input input_website input_ph" type="url" name="name" placeholder="Website" required="required" data-error="Name is required." />
                        <textarea id="input_message" class="input_ph input_message" name="message" placeholder="Message" rows="3" required="required" data-error="Please, write us a message."></textarea>
                    </div>
                    <div>
                        <button id="review_submit" type="submit" class="red_button message_submit_btn trans_300" value="Submit">Gửi câu trả lời</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</asp:Content>
