using BusinessService.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;

namespace BusinessService.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : Controller
    {

        private readonly UnitOfWork _uow;
        private readonly ILogger<StudentsController> _logger;
  
        public StudentsController(IUnitofWork uow, ILogger<StudentsController> logger)
        {
            this._uow = uow as UnitOfWork;
            this._logger = logger;
        }

        // GET: api/Student
        [HttpGet]
        public ActionResult<IEnumerable<Student>> GetStudent()
        {
            _logger.LogInformation("GetFirstFiveStudents method was called");
            return  this._uow.StudentService.GetFirstFiveStudents().ToList();
        }

        [HttpGet("{id}")]
        public ActionResult<Student> GetStudent(int id)
        {
            var student = this._uow.StudentService.GetById(id);
            if (student == null)
            {
                _logger.LogInformation("Student not Found");
            }
            return this._uow.StudentService.GetById(id);
        }

        [HttpPut("{id}")]
        public ActionResult<IEnumerable<Student>> PutSchool(int id, Student student)
        {
            var studentTemp = this._uow.StudentService.GetById(id);
            
            if (studentTemp == null)
            {
                _logger.LogInformation("Student not Found");
            }
            else
            {
                studentTemp.StudentID = id;
                studentTemp.LastName = student.LastName;
                studentTemp.FirstMidName = student.FirstMidName;
                studentTemp.StandardId= student.StandardId;
                studentTemp.SchoolID = student.SchoolID;
                try
                {
                    this._uow.StudentService.Update(studentTemp);
                    this._uow.Commit();
                }
                catch (System.Exception e)
                {
                    _logger.LogError(e.Message.ToString());
                }
            }
            return this._uow.StudentService.GetAll().ToList();
        }

        // POST: api/Student
        [HttpPost]
        public ActionResult<Student> AddStudent(Student student)
        {
            if (student != null)
            {
                try
                {
                    this._uow.StudentService.Add(student);
                    this._uow.Commit();
                }
                catch (System.Exception e)
                {
                    _logger.LogError(e.Message.ToString());
                }
            }
            else
                _logger.LogInformation("Student not Found");

            return this._uow.StudentService.GetById(this._uow.StudentService.GetAll().Max(r => r.StudentID));
        }

        // DELETE: api/School/5
        [HttpDelete("{id}")]
        public void DeleteStudent(int id)
        {

            var student = this._uow.StudentService.GetById(id);           
            try
            {
                this._uow.StudentService.Delete(student);
                this._uow.Commit();
            }
            catch (System.Exception e)
            {
                _logger.LogError(e.Message.ToString());
            }
        }
    }
}
