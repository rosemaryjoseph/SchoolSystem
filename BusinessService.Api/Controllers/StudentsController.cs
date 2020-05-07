using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BusinessService.Data;
using BusinessService.Domain;
using BusinessService.Domain.Repositories;
using System.Collections.Generic;

namespace BusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : Controller
    {
        private readonly IStudentRepository _studentRepository;

        public StudentsController(IStudentRepository studentRepository)
        {
            _studentRepository = studentRepository;
        }

        // GET: api/Student
        [HttpGet]
        public ActionResult<IEnumerable<Student>> GetStudent()
        {
            return _studentRepository.GetAllStudents().ToList();
        }

        [HttpGet("{id}")]
        public ActionResult<Student> GetStudent(int id)
        {
            return _studentRepository.GetByStudentId(id);
        }

        [HttpPut("{id}")]
        public IActionResult PutSchool(int id, Student student)
        {
             return (IActionResult)_studentRepository.UpdateStudent(id,student);            
        }

        // POST: api/Student
        [HttpPost]
        public ActionResult<Student> AddStudent(Student student)
        {
            _studentRepository.AddStudent(student);
             return _studentRepository.GetByStudentId(_studentRepository.GetAllStudents().Max(r => r.StudentID));
        }
    
        // DELETE: api/School/5
        [HttpDelete("{id}")]
        public ActionResult<Student> DeleteStudent(int id)
        {
            return _studentRepository.DeleteStudent(id);
        }
    }
}
