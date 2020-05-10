using BusinessService.Data;
using BusinessService.Domain;
using NUnit.Framework;
using System.Collections.Generic;
using System.Linq;

namespace BusinessService.Tests
{

    public class SchoolServicesTest
    {

       
        public List<School> _schools;
        public BusinessServiceDbContext _context;

        public List<School> GetAllSchools()
        {
            var schools = new List<School>
            {
            new School() {SchoolName = "School1"},
            new School() {SchoolName = "School2"},
            new School() {SchoolName = "School3"},
            new School() {SchoolName = "School4"},
            new School() {SchoolName = "School5"}
            };
            return schools;
        }

        /// <summary>
        /// Initial setup for tests
        /// </summary>
      
        [SetUp]
        public  void Setup()
        {
            _schools = SetUpSchools();
        }
        private List<School> SetUpSchools()
        {
            var schoolId = new int();
            var schools = GetAllSchools();
            foreach (School sctemp in schools)
                sctemp.SchoolID = ++schoolId;
            return schools;

        }      

        [Test]
        public void DeleteSchoolTest(int schoolId)
        {
             object  SchoolID = _schools.FirstOrDefault(r=>r.SchoolID==schoolId);        
            _context.Remove(SchoolID);
            Assert.That(SchoolID, Is.e(_schools.Max(a => a.SchoolID)));   // Max id reduced by 1
        }
    }
    
}
