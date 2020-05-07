using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BusinessService.Domain
{
    public class Student
    {
        [Required]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int StudentID { get; set; }        
        public int SchoolID { get; set; }
        public int StandardId { get; set; }
        public string LastName { get; set; }
        public string FirstMidName { get; set; }       
        public virtual Standard Standard { get; set; }
        public virtual School School { get; set; }
        
    }
}