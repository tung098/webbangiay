namespace Web_Ban_Giay_2.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonHang")]
    public partial class ChiTietDonHang
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Madh { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Magiay { get; set; }

        [StringLength(50)]
        public string Mau { get; set; }

        public int? Size { get; set; }

        public int? SoLuong { get; set; }

        public double? Dongia { get; set; }

        public virtual Giay Giay { get; set; }

        public virtual DonHang DonHang { get; set; }
    }
}
