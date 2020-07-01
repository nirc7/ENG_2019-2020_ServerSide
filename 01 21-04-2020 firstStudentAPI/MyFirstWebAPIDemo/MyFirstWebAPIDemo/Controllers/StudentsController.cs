using MyFirstWebAPIDemo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MyFirstWebAPIDemo.Controllers
{
    public class StudentsController : ApiController
    {
        //SELECT all
        //http://localhost:56049/api/students
        public IEnumerable<Student> Get()
        {
            //opt1
            //Student[] sa = StudentsDB.students.ToArray();

            //throw new NullReferenceException("this is a null ref exp");

            //opt2
            return StudentsDB.students;

        }

        //SELECT one
        //http://localhost:56049/api/students/2
        public Student Get(int id)
        {
            return StudentsDB.students.SingleOrDefault(stu => stu.ID == id);
        }

        //INSERT
        //http://localhost:56049/api/students - POST
        public int Post([FromBody]Student value)
        {
            int maxId = StudentsDB.students.Max(stu => stu.ID);
            value.ID = ++maxId;
            StudentsDB.students.Add(value);
            return value.ID;
        }

        //UPDATE
        public string Put(int id, [FromBody]Student value)
        {
            Student student2Update = StudentsDB.students.SingleOrDefault(stu => stu.ID == id);
            if (student2Update != null)
            {
                //student2Update.ID = id;
                student2Update.Name = value.Name;
                student2Update.Grade = value.Grade;
                return "done:)";
            }
            else
            {
                return "no such student!!!";
            }
        }

        //DELETE
        [HttpDelete]
        public IHttpActionResult Delete(int id)
        {
            Student student2Delete = StudentsDB.students.SingleOrDefault(stu => stu.ID == id);
            if (student2Delete != null)
            {
                StudentsDB.students.Remove(student2Delete);
                var val = new
                {
                    Result = "deleted successfully:)",
                    Date = DateTime.Now.ToShortTimeString()
                };
                var j = Json(val);
                return j;
            }
            else
            {
                var val = new { Result = "no student to delete!" };
                var j = Json(val);
                return j;
            }
        }
    }
}
