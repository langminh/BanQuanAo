using BanQuanAo.Entity.EF;
using BanQuanAo.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        private databasequanaoEntities1 db = new databasequanaoEntities1();
        private List<tbl_Product> dsHangHoa = new List<tbl_Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadDropdow();
                loadDsHang();
            }
        }

        void loadDropdow()
        {
            var drvan = from c in db.tbl_Transport select c;
            drVanChuyen.DataSource = drvan.ToList();
            drVanChuyen.DataTextField = "Transport_Name";
            drVanChuyen.DataValueField = "Transport_ID";
            drVanChuyen.DataBind();

            var drpay = from c in db.tbl_Payment select c;
            drThanhToan.DataSource = drpay.ToList();
            drThanhToan.DataTextField = "Pay_Name";
            drThanhToan.DataValueField = "Pay_ID";
            drThanhToan.DataBind();

        }

        void loadDsHang()
        {

            var cart = (List<CartItem>)Session[CommonContanst.CART_SESSION];
            if(cart != null)
            {
                foreach(var item in cart)
                {
                    dsHangHoa.Add(item.Product);
                }
                GridView1.DataSource = dsHangHoa;
                GridView1.DataBind();
            }
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            loadDsHang();
            try
            {
                tbl_Order dh = new tbl_Order();
                var session = (LoginSession)Session[CommonContanst.USER_SESSION];
                if (session != null)
                {
                    var userID = db.tbl_Customer.Find(session.userName).UserID;
                    dh.UserID = userID;
                }
                var r = db.tbl_Order.ToList();

                dh.Order_ID = (r.ToList().Count + 1).ToString();
                dh.VAT_Transport = 20000;
                dh.VAT_Gift = 0;
                dh.SumWeight = 0;
                dh.SumMoney = 0;
                for (int i = 0; i < dsHangHoa.Count; i++)
                {
                    dh.SumWeight += dsHangHoa[i].Weight;
                    dh.SumMoney += dsHangHoa[i].Price_Export * dsHangHoa[i].Quantium;
                }
                
                dh.Date = DateTime.Now;
                dh.Address_Received = txtDiaChi.Text;
                dh.Mesage = "";
                dh.Pay_ID = int.Parse(drThanhToan.SelectedValue);
                dh.Transport_ID = int.Parse(drVanChuyen.SelectedValue);
                dh.Phone_Received = int.Parse(txtSoDienThoai.Text);
                dh.Phone_Pay = int.Parse(txtSoDienThoai.Text);
                dh.Address_Pay = txtDiaChi.Text;
                dh.State = "Chưa xử lý";
                dh.Name_Pay = txtHoTen.Text;
                dh.Name_Received = txtHoTen.Text;
                db.tbl_Order.Add(dh);
                db.SaveChanges();

                for (int i = 0; i < dsHangHoa.Count; i++)
                {
                    tbl_OrderDetial chitietDh = new tbl_OrderDetial();
                    chitietDh.Order_ID = dh.Order_ID;
                    chitietDh.Product_ID = dsHangHoa[i].Product_ID;
                    chitietDh.Price_Export = dsHangHoa[i].Price_Export;
                    chitietDh.Amount = dsHangHoa[i].Amount;
                    chitietDh.Money = chitietDh.Amount * chitietDh.Price_Export;
                    chitietDh.State = "chưa xử lý";
                    db.tbl_OrderDetial.Add(chitietDh);
                    db.SaveChanges();
                }

                Session.Remove(CommonContanst.CART_SESSION);

                Response.Redirect("DatThanhCong.aspx");

            }
            catch (Exception ex)
            {

            }
        }
    }
}