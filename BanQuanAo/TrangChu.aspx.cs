using BanQuanAo.Entity.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo
{
    public partial class TrangChu1 : System.Web.UI.Page
    {
        private databasequanaoEntities1 db = new databasequanaoEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
            }
        }
        void load()
        {
            var result = (from c in db.tbl_Product select c).Take(10); ;
            sanpham.DataSource = result.ToList();
            sanpham.DataBind();

            var list = db.tbl_Product.OrderByDescending(x => x.Order).Take(10).ToList();
            listBan.DataSource = list;
            listBan.DataBind();

            var l = db.tbl_Product.OrderByDescending(x => x.CreateDate).Take(10).ToList();
            listMoi.DataSource = l;
            listMoi.DataBind();
        }
    }
}