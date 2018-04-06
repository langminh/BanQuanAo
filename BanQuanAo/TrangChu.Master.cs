using BanQuanAo.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo
{
    public partial class TrangChu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var session = (LoginSession)Session[CommonContanst.USER_SESSION];
                if (session != null)
                {
                    Label1.Text = session.userName;
                }
                else
                {
                    Label1.Text = "Đăng nhập";
                }
                var cart = (List<CartItem>)Session[CommonContanst.CART_SESSION];
                if(cart != null)
                {
                    lbsoSanPham.Text = cart.Count+"";
                }
            }
        }
    }
}