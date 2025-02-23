using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace ServiceStationWebApp.Models
{
    public class Brand
    {
        [Key]
        public int BrandID { get; set; }

        [Required]
        [StringLength(100)]
        public string BrandName { get; set; }

        [Required]
        [StringLength(50)]
        public string ExtName { get; set; }

        [NotMapped]
        public ImageUpload FileUpload { get; set; }

        public ICollection<CarModel> CarModels { get; set; }
    }
}
