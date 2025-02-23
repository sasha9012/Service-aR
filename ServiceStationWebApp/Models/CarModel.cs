using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace ServiceStationWebApp.Models
{
    public class CarModel
    {
        [Key]
        public int CarModelID { get; set; }

        [Required]
        [StringLength(100)]
        public string CarModelName { get; set; }

        [Required]
        [StringLength(50)]
        public string ExtName { get; set; }

        [Required]
        public int BrandID { get; set; }

        [ForeignKey("BrandID")]
        [InverseProperty("CarModels")]
        public Brand Brand { get; set; }

        [NotMapped]
        public ImageUpload FileUpload { get; set; }

        public ICollection<Booking> Bookings { get; set; }
    }
}
