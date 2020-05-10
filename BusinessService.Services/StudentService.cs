using BusinessService.Data;
using BusinessService.Data.Repositories;
using BusinessService.Domain;
using BusinessService.Domain.Services;
using System.Collections.Generic;
using System.Linq;

namespace BusinessService.Services
{
    public class StudentService : GenericRepository<Student>, IStudentRepository
    {
        private readonly BusinessServiceDbContext _DbContext;

        public StudentService(BusinessServiceDbContext context):base(context)
        {
            this._DbContext = context;
        }
        public IEnumerable<Student> GetFirstFiveStudents()
        {
            return this._DbContext.Students.Take(5);
        }
       
    }
}
