using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApiStudentsLoginDemo.Models;

namespace WebApiStudentsLoginDemo.Controllers
{
    public class RWStudentController : ApiController
    {
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
                return Created(new Uri(Request.RequestUri.AbsoluteUri + res), studen2Insert);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

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
    }
}
