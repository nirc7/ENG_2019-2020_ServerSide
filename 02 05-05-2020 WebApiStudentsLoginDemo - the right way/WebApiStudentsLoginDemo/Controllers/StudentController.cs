using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using WebApiStudentsLoginDemo.Models;

namespace WebApiStudentsLoginDemo.Controllers
{
    //[EnableCors( "*", "*", "*")]
    public class StudentController : ApiController
    {
        //[EnableCors( "*", "*", "*")]
        public IEnumerable<Student> Get()
        {
            return StudentsDB.GetAllStudents();
        }

        public Student Get(int id)
        {
            return StudentsDB.GetStudentByID(id);
        }

        //opt1 - time efficient
        //[DisableCors]
        public Student Get(string email, string password)
        {
            return StudentsDB.GetStudentByEmailAndPassword(email, password);
        }

        //opt2 - less code
        //public Student Get(string email, string password)
        //{
        //    return StudentsDB.GetAllStudents()
        //        .SingleOrDefault(st => st.Email == email && st.Password == password);
        //}

        //[DisableCors]
        public Student Post([FromBody] Student val)
        {
            return StudentsDB.GetStudentByEmailAndPassword(val.Email, val.Password);
        }

        public string Put(int id, [FromBody]  Student studentForUpdate)
        {
            string output = "error on update";

            Student sRes = StudentsDB.GetStudentByID(id);
            if (sRes != null)
            {
                int res = StudentsDB.UpdateStudent(studentForUpdate);
                if (res == 1)
                {
                    output = "done:)";
                }
            }
            else
            {
                output = "no student to update!";
            }
            return output;
        }

        public IHttpActionResult Delete(int id)
        {
            var anonimousObj = new { Result = $"student with id={id} was not deleted!" };
            int res= StudentsDB.DeleteStudentById(id);
            if (res==1)
            {
                anonimousObj = new { Result = $"student with id={id} is deleted!" };
               
            }
            var jsonStr = Json(anonimousObj);
            return jsonStr;
        }
    }
}
