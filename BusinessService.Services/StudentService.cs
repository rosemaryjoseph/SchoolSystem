using BusinessService.Data;
using BusinessService.Data.Repositories;
using BusinessService.Domain;
using BusinessService.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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
            return this._DbContext.Students.ToList().Take(5);
        }
    }
}
