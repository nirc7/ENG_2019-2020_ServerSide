using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Jion
{
    class Program
    {
        static Student[] students = new Student[]{
            new Student{sID=1, Name="avi", cID=1, Grade=80},
            new Student{sID=2, Name="zvi", cID=2, Grade=88},
            new Student{sID=3, Name="dora", cID=1, Grade=90},
            new Student{sID=4, Name="rita", cID=2, Grade=100},
            new Student{sID=5, Name="ami", cID=3, Grade=100}
        };

        static Course[] courses = new Course[] {
            new Course{courseID=1, courseName="math"},
            new Course{courseID=2, courseName="english"},

            new Course{courseID=4, courseName="hebrew"}
        };
        
        static void Main(string[] args)
        {
            //InnerJoinFunc();

           LeftOuterFunc();
           


        }

        private static void InnerJoinFunc()
        {
            var innerj = from s in students
                         join c in courses
                         on s.cID equals c.courseID
                         select new { s.Name, c.courseName };

            foreach (var item in innerj)
            {
                Console.WriteLine(item.Name + " " + item.courseName);
            }
        }

        private static void LeftOuterFunc()
        { 
            var innerj = from s in students
                         join c in courses
                         on s.cID equals c.courseID into courseGroup
                         select new {s.Name, courseGroup};

            foreach (var item in innerj)
	        {
                Console.WriteLine(item.Name);
                foreach (var item2 in item.courseGroup)
                {
                    Console.WriteLine("\t"+ item2.courseName);
                }
	        }
        }
    }

    class Student
    {
        public int sID { get; set; }
        public string Name{ get; set; }
        public int Grade { get; set; }
        public int cID { get; set; }
    }

    class Course
    {
        public int courseID{ get; set; }
        public string courseName { get; set; }
    }
}
