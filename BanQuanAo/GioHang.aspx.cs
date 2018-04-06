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
    public partial class GioHang : System.Web.UI.Page
    {
        private databasequanaoEntities1 db = new databasequanaoEntities1();
        private List<tbl_Product> dsHangHoa = new List<tbl_Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
            }
        }

        void load()
        {
            try
            {
                var result = (List<CartItem>)Session[CommonContanst.CART_SESSION];
                if (result != null)
                {
                    foreach (var item in result)
                    {
                        dsHangHoa.Add(item.Product);
                    }
                    GridView1.DataSource = dsHangHoa;
                    GridView1.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Redirect("TrangChu.aspx");
            }
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThanhToanTien.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[1].Text;
            TextBox2.Text = row.Cells[6].Text;
            product_id.Value = row.Cells[0].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(product_id.Value != null)
            {
                var result = (List<CartItem>)Session[CommonContanst.CART_SESSION];
                if(result != null)
                {
                    foreach(var item in result)
                    {
                        if(item.Product.Product_ID == int.Parse(product_id.Value))
                        {
                            result.Remove(item);
                            break;
                        }
                    }
                    Session.Remove(CommonContanst.CART_SESSION);
                    Session[CommonContanst.CART_SESSION] = result;
                    load();
                }
            }
            else
            {
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (product_id.Value != null)
            {
                var result = (List<CartItem>)Session[CommonContanst.CART_SESSION];
                if (result != null)
                {
                    try
                    {
                        foreach (var item in result)
                        {
                            if (item.Product.Product_ID == int.Parse(product_id.Value))
                            {
                                result.Remove(item);
                                item.Product.Quantium = int.Parse(TextBox2.Text);
                                result.Add(item);
                            }
                        }
                        Session.Remove(CommonContanst.CART_SESSION);
                        Session[CommonContanst.CART_SESSION] = result;
                        load();
                    }
                    catch
                    {

                    }
                }
            }
            else
            {

            }
        }
    }
}