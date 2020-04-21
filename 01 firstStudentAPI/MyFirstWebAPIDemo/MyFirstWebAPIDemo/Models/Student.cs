using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFirstWebAPIDemo.Models
{
    public class Student
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Grade { get; set; }

        public override string ToString()
        {
            return $"{ID},{Name},{Grade}";
        }
    }
}