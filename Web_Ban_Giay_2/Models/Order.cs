using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Ban_Giay_2.Models.Entities;

namespace Web_Ban_Giay_2.Models.Entities
{
    public class Order
    {
        ShopModel db = null;

        public Order()
        {
            db = new ShopModel();
        }

        public int Insert(DonHang dh)
        {
            db.DonHangs.Add(dh);
            db.SaveChanges();
            return dh.Madh;
        }
    }
}