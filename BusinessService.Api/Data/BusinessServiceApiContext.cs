using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BusinessService.Data;

namespace BusinessService.Api.Data
{
    public class BusinessServiceApiContext : DbContext
    {
        public BusinessServiceApiContext (DbContextOptions<BusinessServiceApiContext> options)
            : base(options)
        {
        }

        public DbSet<BusinessService.Data.Student> Student { get; set; }
    }
}
