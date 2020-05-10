using System.Collections.Generic;

namespace BusinessService.Domain.Services
{
    public interface IStudentRepository
    {
        IEnumerable<Student> GetFirstFiveStudents();
    }
}
