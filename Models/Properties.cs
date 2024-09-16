using System.ComponentModel.DataAnnotations;

namespace fondoxyz.Data
{
    public class Properties
    {
        public int Id { get; set; }
        
        [Required]
        public string Name { get; set; }
        
        [Required]
        public string Description { get; set; }
        
        [Required]
        public string Type { get; set; }

        [Required]
        public string Location { get; set; }
        
        [Required]
        public string Image1 { get; set; }

        [Required]
        public string Image2 { get; set; }

        [Required]
        public string Image3 { get; set; }
    }
}