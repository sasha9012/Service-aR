using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace ServiceStationWebApp.Models
{
    public class Booking
    {
        [Key]
        public int BookingID { get; set; }

        [Required]
        [StringLength(100)]
        public string UserName { get; set; }

        [StringLength(20)]
        public string ContactNo { get; set; }

        [StringLength(20)]
        public string Status { get; set; }

        [Required]
        public DateTime BookingDate { get; set; }

        [Required]
        public int PackageID { get; set; }

        [ForeignKey("PackageID")]
        [InverseProperty("PackageBookings")]
        public Package Package { get; set; }

        [Required]
        public int CarModelID { get; set; }

        [ForeignKey("CarModelID")]
        [InverseProperty("Bookings")]
        public CarModel CarModel { get; set; }
    }
}
