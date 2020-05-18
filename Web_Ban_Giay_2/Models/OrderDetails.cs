using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Ban_Giay_2.Models.Entities
{
    public class OrderDetails
    {
        ShopModel db = null;

        public OrderDetails()
        {
            db = new ShopModel();
        }

        public bool Insert(ChiTietDonHang cdh)
        {
            try
            {
                db.ChiTietDonHangs.Add(cdh);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}