﻿using System.Web;
using System.Web.Mvc;

namespace Web_Ban_Giay_2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
