using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApiStudentsLoginDemo.Models;

namespace WebApiStudentsLoginDemo.Controllers
{
    [RoutePrefix("api/rwstudent")]
    public class RWStudentController : ApiController
    {
        
        //CRUD
        
        //SELECT *  - read
        //[HttpGet]       
        public IHttpActionResult Get()
        {
            try
            {
                return Ok(StudentsDB.GetAllStudents());
            }
            catch (Exception ex)
            {
                //return BadRequest(ex.Message);
                return BadRequest("could not get all the students!\n  -- " + ex.Message);
                //return Content(HttpStatusCode.BadRequest,ex);
            }
        }

        //GET by bool
        [Route("{isAvi:bool}")]
        public IHttpActionResult Get(bool isAvi)
        {
            try
            {
                if (isAvi)
                {
                    return Ok(StudentsDB.GetAllStudents().SingleOrDefault(stu => stu.Name == "avi"));
                }
                else
                {
                    return Ok(StudentsDB.GetAllStudents().Where(stu => stu.Name != "avi"));
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        //get grade
        [HttpGet]
        [Route("{id}/grade")]
        [Route("~/sg/{id}")]
        public IHttpActionResult ReturnStudentGrade(int id)
        {
            try
            {
                Student s = StudentsDB.GetStudentByID(id);
                if (s != null)
                {
                    return Ok(s.Grade);
                }
                return Content(HttpStatusCode.NotFound, $"student with id {id} was not found in order to return his grade!!!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Route("{id:int:min(1)}", Name = "GetStudentByID")]
        public IHttpActionResult Get(int id)
        {
            try
            {
                Student s = StudentsDB.GetStudentByID(id);
                if (s != null)
                {
                    return Ok(s);
                }
                return Content(HttpStatusCode.NotFound, $"student with id {id} was not found!!!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        //insert - crearte
        public IHttpActionResult Post([FromBody] Student studen2Insert)
        {

            try
            {
                int res = StudentsDB.InsertStudent(studen2Insert);
                if (res == -1)
                {
                    return Content(HttpStatusCode.BadRequest, $"student id = {studen2Insert.ID} was not created in the DB!!!");
                }
                studen2Insert.ID = res;
                return Created(new Uri(Url.Link("GetStudentByID", new { id = res })), studen2Insert);
                //return Created(new Uri(Request.RequestUri.AbsoluteUri + res), studen2Insert);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        //update - update
        public IHttpActionResult Put(Student student2Update)
        {
            try
            {
                Student s = StudentsDB.GetStudentByID(student2Update.ID);
                if (s != null)
                {
                    int res = StudentsDB.UpdateStudent(student2Update);
                    if (res == 1)
                    {
                        return Ok();
                    }
                    return Content(HttpStatusCode.NotModified, $"student with id {student2Update.ID} exsits but could not be modified!!!");
                }
                return Content(HttpStatusCode.NotFound, "student with id = " + student2Update.ID + " was not found to update!!!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
                throw;
            }
        }

        //delete - delete
        public IHttpActionResult Delete(int id)
        {
            try
            {
                Student s = StudentsDB.GetStudentByID(id);
                if (s != null)
                {
                    int res = StudentsDB.DeleteStudentById(id);
                    if (res == 1)
                    {
                        return Ok();
                    }
                    return Content(HttpStatusCode.BadRequest, $"student with id {id} exsits but could not be deleted!!!");
                }
                return Content(HttpStatusCode.NotFound, "student with id = " + id + " was not found to delete!!!");

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("stam/{name2}")]
        public IHttpActionResult Stam( string name2)
        {
            return Ok(name2 + ":)");
        }

        [HttpPost]
        [Route("stam3")]
        public IHttpActionResult Stam3([FromBody] string name)
        {
            return Ok(name + ":)3");
        }

        [HttpPost]
        [Route("stam2")]
        public IHttpActionResult Stam(Student s2)
        {
            return Ok(s2.Name  + ", " + s2.ID+ ":)");
        }

        [HttpGet]
        [Route("{grade}/students")]
        public IHttpActionResult GetAllStudentWithGradeGreaterThan(int grade)
        {
            try
            {
                DataTable dt = StudentsDB.GetAllStudentsWithGradeGreaterThan(grade);
                return Ok(dt);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
