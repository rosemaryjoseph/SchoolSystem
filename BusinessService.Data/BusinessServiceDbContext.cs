using Microsoft.EntityFrameworkCore;
using BusinessService.Domain;

namespace BusinessService.Data
{
    public partial class BusinessServiceDbContext : DbContext
    {
        public BusinessServiceDbContext(DbContextOptions<BusinessServiceDbContext> options)
            : base(options)
        {
         
        }
        public virtual DbSet<School> Schools { get; set; }        
        public virtual DbSet<Standard> Standards { get; set; }
        public virtual DbSet<Student> Students { get; set; }

    }
}