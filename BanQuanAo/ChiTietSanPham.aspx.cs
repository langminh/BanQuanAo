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
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        private databasequanaoEntities1 db = new databasequanaoEntities1();
        public int amount = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Product_ID"] != null)
            {

                string id = Request.QueryString["Product_ID"];
                tbl_Product product = db.tbl_Product.Find(Int32.Parse(id));
                lbTenSp.Text = product.Product_Name;
                imgproduct.ImageUrl = "~/Images/" + product.Image;

            }

            if (!Page.IsPostBack)
            {
                TextBox1.Text = "1";
            }

            msg.Visible = false;
            msg.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                int quantity = int.Parse(TextBox1.Text);
                int id = int.Parse(Request.QueryString["Product_ID"]);
                var i = db.tbl_Product.Find(id);

                var cart = Session[CommonContanst.CART_SESSION];
                if(cart != null)
                {
                    var list = (List<CartItem>)cart;
                    if(list.Exists(x => x.Product.Producer_ID == id))
                    {
                        foreach(var item in list)
                        {
                            if(item.Product.Product_ID == id)
                            {
                                item.Product.Quantium += quantity;
                            }
                        }
                    }
                    else
                    {
                        var item = new CartItem();
                        item.Product = i;
                        item.Quantity = quantity;
                        list.Add(item);
                    }
                    Session[CommonContanst.CART_SESSION] = list;
                }
                else
                {
                    var item = new CartItem();
                    item.Product = i;
                    item.Product.Quantium = quantity;
                    var list = new List<CartItem>();
                    list.Add(item);
                    Session[CommonContanst.CART_SESSION] = list;
                }


                //Session[CommonContanst.CART_SESSION] += ("" + id + "_" + TextBox1.Text + "#");
                Response.Redirect("GioHang.aspx");
            }
            catch(Exception ex)
            {
                msg.Visible = true;
                msg.Text = "Định dạng nhập vào không chính xác. Vui lòng nhập lại.";
                msg.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = "1";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                amount = int.Parse(TextBox1.Text);
                amount++;
                TextBox1.Text = amount + "";
            }
            catch
            {
                msg.Visible = true;
                msg.Text = "Định dạng nhập vào không chính xác. Vui lòng nhập lại.";
                msg.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = "1";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                amount = int.Parse(TextBox1.Text);
                if (amount > 0)
                {
                    amount--;
                    TextBox1.Text = amount + "";
                }
            }
            catch
            {
                msg.Visible = true;
                msg.Text = "Định dạng nhập vào không chính xác. Vui lòng nhập lại.";
                msg.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = "1";
            }
        }
    }
}