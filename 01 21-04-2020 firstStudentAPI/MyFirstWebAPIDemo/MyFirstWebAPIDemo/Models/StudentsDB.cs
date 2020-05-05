using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFirstWebAPIDemo.Models
{
    public class StudentsDB
    {
        public static List<Student> students = new List<Student>()
        {
            new Student(){ID=1, Name="avi", Grade=100 },
            new Student(){ID=2, Name="charlie", Grade=90 },
            new Student(){ID=3, Name="benny", Grade=95 },
            new Student(){ID=4, Name="dora", Grade=97 },
        };
    }
}