﻿namespace Web_Ban_Giay_2.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Giay")]
    public partial class Giay
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Giay()
        {
            ChiTietDonHangs = new HashSet<ChiTietDonHang>();
            ChiTietMaus = new HashSet<ChiTietMau>();
            ChiTietSizes = new HashSet<ChiTietSize>();
        }

        [Key]
        public int Magiay { get; set; }

        public int? Manhacc { get; set; }

        public int? Manhasx { get; set; }

        public int? Maloaigiay { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage ="Bạn chưa nhập tên giày")]
        public string Tengiay { get; set; }

        public int? Soluongton { get; set; }

        public double? Giaban { get; set; }

        [StringLength(50)]
        //[Required(ErrorMessage = "Bạn chưa chọn file ảnh")]
        public string Hinhanh { get; set; }

        [StringLength(4000)]
        public string Mota { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietMau> ChiTietMaus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietSize> ChiTietSizes { get; set; }

        public virtual LoaiGiay LoaiGiay { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}
