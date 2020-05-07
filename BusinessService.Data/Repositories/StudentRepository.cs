using System.Collections.Generic;
using BusinessService.Domain;
using BusinessService.Domain.Repositories;
using Microsoft.EntityFrameworkCore;


namespace BusinessService.Data.Repositories
{
    public class StudentRepository : IStudentRepository
    {
        private BusinessServiceDbContext context;
        public StudentRepository(BusinessServiceDbContext ctx)
        {
            context = ctx;
        }

        public Student AddStudent(Student student)
        {
            context.Add(student);
            context.SaveChanges();         
            return student;
        }

        public Student DeleteStudent(int studentID)
        {
            Student student = context.Students.Find(studentID);
            if (student != null)
            {
                context.Students.Remove(student);
                context.SaveChanges();
            }
            return student;
        }

        public IEnumerable<Student> GetAllStudents()
        {
            return context.Students;
        }

        public Student GetByStudentId(int StudentId)
        {
            return context.Students.Find(StudentId);
        }

        public Student UpdateStudent(int id,Student studentChanges)
        {
            if (context.Students.Find(id) != null)
            {
                
                //var student =context.Students.Attach(studentChanges);
                context.Entry(studentChanges).State=EntityState.Modified;
                context.SaveChanges();
                
            }
            return studentChanges;
        }
    }
}
