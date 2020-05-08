using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessService.Domain.Services
{
    public interface IStudentRepository
    {
        IEnumerable<Student> GetFirstFiveStudents();
    }
}
