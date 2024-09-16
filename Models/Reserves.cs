using System.ComponentModel.DataAnnotations;

namespace fondoxyz.Models
{
    public class Reserves
    {
        public int Id { get; set; }
        
        [Required]
        public string Location { get; set; }
        
        [Required]
        public string ReservationDate { get; set; }
        
        [Required]
        public string ArrivalDate { get; set; }
        
        [Required]
        public string DepartureDate { get; set; }
        
        [Required]
        public int Persons { get; set; }
        
        [Required]
        public int Rooms { get; set; }
        
        [Required]
        public int UserId { get; set; }
    }
}