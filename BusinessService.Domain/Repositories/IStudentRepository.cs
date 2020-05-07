using BusinessService.Domain;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace BusinessService.Domain.Repositories
{
    public interface IStudentRepository
    {
        Student AddStudent(Student student);
        Student UpdateStudent(int studentID,Student studentChanges);
        Student DeleteStudent(int studentID);
        Student GetByStudentId(int StudentId);
        IEnumerable<Student> GetAllStudents();
               
    }
}
