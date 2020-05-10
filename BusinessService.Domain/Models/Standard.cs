using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace BusinessService.Domain
{
    public class Standard
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int StandardId { get; set; }
        public string StandardName { get; set; }
        public string Division { get; set; }
       
        public ICollection<Student> Students { get; set; }
    }
}