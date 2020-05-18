namespace Web_Ban_Giay_2.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietMau")]
    public partial class ChiTietMau
    {
        [Key]
        public int MachitietMau { get; set; }

        public int? Mamau { get; set; }

        public int? Magiay { get; set; }

        [StringLength(50)]
        public string Ghichu { get; set; }

        public virtual Giay Giay { get; set; }

        public virtual Mau Mau { get; set; }
    }
}
