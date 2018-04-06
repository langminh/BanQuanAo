using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using BanQuanAo.Entity.EF;
namespace BanQuanAo.Helper
{
    public class CartItem
    {
        public tbl_Product Product { get; set; }
        public int Quantity { get; set; }
    }
}