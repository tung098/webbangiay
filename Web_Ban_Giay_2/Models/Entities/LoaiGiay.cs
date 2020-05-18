namespace Web_Ban_Giay_2.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiGiay")]
    public partial class LoaiGiay
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiGiay()
        {
            Giays = new HashSet<Giay>();
        }

        [Key]
        public int Maloaigiay { get; set; }

        [StringLength(50)]
        public string Tenloaigiay { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Giay> Giays { get; set; }
    }
}
