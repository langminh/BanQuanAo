//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BanQuanAo.Entity.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_OrderDetial
    {
        public string Order_ID { get; set; }
        public int Product_ID { get; set; }
        public Nullable<double> Price_Export { get; set; }
        public Nullable<int> Amount { get; set; }
        public Nullable<double> Money { get; set; }
        public string State { get; set; }
    
        public virtual tbl_Order tbl_Order { get; set; }
        public virtual tbl_Product tbl_Product { get; set; }
    }
}
