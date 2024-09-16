using System.ComponentModel.DataAnnotations;

namespace fondoxyz.Models
{
    public class Rooms
    {
        public int Id { get; set; }
        
        [Required]
        public string Description { get; set; }

        [Required]
        public int Quantity { get; set; }

        [Required]
        public int Capacity { get; set; }

        [Required]
        public string NormalFee { get; set; }

        [Required]
        public string SpecialFee { get; set; }

        [Required]
        public int PropertyId { get; set; }
    }
}