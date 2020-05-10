using BusinessService.Data;
using BusinessService.Domain;
using BusinessService.Services;
using System;

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

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if(!this.disposed && disposing)
            {
               this._DbContext.Dispose();                
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
