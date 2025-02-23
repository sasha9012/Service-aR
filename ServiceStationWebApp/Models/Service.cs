using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace ServiceStationWebApp.Models
{
    public class Service
    {
        [Key]
        public int ServiceID { get; set; }

        [Required]
        [StringLength(100)]
        public string ServiceName { get; set; }

        [Required]
        [StringLength(50)]
        public string ExtName { get; set; }

        [NotMapped]
        public ImageUpload FileUpload { get; set; }

        public ICollection<Package> Packages { get; set; }
    }
}
