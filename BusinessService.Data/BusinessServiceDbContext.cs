using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using System.Configuration;
using BusinessService.Domain;

namespace BusinessService.Data
{
    public partial class BusinessServiceDbContext : DbContext
    {
        public BusinessServiceDbContext(DbContextOptions<BusinessServiceDbContext> options)
            : base(options)
        {
         
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

        public virtual DbSet<School> Schools { get; set; }        
        public virtual DbSet<Standard> Standards { get; set; }
        public virtual DbSet<Student> Students { get; set; }

    }
}