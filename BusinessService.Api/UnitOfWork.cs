using BusinessService.Data;
using BusinessService.Domain;
using BusinessService.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BusinessService.Api
{
    public class UnitOfWork : IUnitofWork
    {
        private readonly BusinessServiceDbContext _DbContext;

        public StudentService StudentService { get; private set; }

        public UnitOfWork(BusinessServiceDbContext context)
        {
            this._DbContext = context;
            this.StudentService = new StudentService(this._DbContext);
        }
        public void Commit()
        {
            this._DbContext.SaveChanges();
        }

        public void Dispose()
        {
            this._DbContext.Dispose();
        }
    }
}
