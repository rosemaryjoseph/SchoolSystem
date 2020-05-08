using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BusinessService.Data;
using BusinessService.Domain;
using BusinessService.Domain.Repositories;
using System.Collections.Generic;
using BusinessService.Domain.Services;

namespace BusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : Controller
    {

        private readonly UnitOfWork _uow;
        public StudentsController(IUnitofWork uow)
        {
            this._uow = uow as UnitOfWork;
        }

        // GET: api/Student
        [HttpGet]
        public ActionResult<IEnumerable<Student>> GetStudent()
        {
            return this._uow.StudentService.GetFirstFiveStudents().ToList();
        }

        [HttpGet("{id}")]
        public ActionResult<Student> GetStudent(int id)
        {
            return this._uow.StudentService.GetById(id);
        }

        [HttpPut("{id}")]
        public ActionResult<IEnumerable<Student>> PutSchool(int id, Student student)
        {
            this._uow.StudentService.Update(student);
            return  this._uow.StudentService.GetAll().ToList();
        }

        // POST: api/Student
        [HttpPost]
        public ActionResult<Student> AddStudent(Student student)
        {
            this._uow.StudentService.Add(student);
            this._uow.Commit();
            return this._uow.StudentService.GetById(this._uow.StudentService.GetAll().Max(r => r.StudentID));
        }

        // DELETE: api/School/5
        [HttpDelete("{id}")]
        public void DeleteStudent(int id)
        {
            var student= this._uow.StudentService.GetById(id);
            this._uow.StudentService.Delete(student);
            this._uow.Commit();
          
        }
    }
}
