using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BusinessService.Domain
{
    public class School
    {
            [Required]
            [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
            public int SchoolID { get; set; }
            public string SchoolName { get; set; }
        }

   
}