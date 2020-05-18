namespace Web_Ban_Giay_2.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietSize")]
    public partial class ChiTietSize
    {
        [Key]
        public int MachitietSize { get; set; }

        public int? Masize { get; set; }

        public int? Magiay { get; set; }

        [StringLength(50)]
        public string Ghichu { get; set; }

        public virtual Giay Giay { get; set; }

        public virtual Size Size { get; set; }
    }
}
