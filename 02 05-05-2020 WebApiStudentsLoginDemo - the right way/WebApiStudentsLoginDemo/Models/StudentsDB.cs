using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApiStudentsLoginDemo.Models
{
    public class StudentsDB
    {
        static string strCon = @"Data Source=E440\SQLEXPRESS;Initial Catalog=UsersDB;Integrated Security=True";
        public static List<Student> GetAllStudents()
        {
            string strComm = "SELECT * FROM StudentsTB";
            return ExcReader(strComm);
        }

        public static Student GetStudentByID(int id)
        {
            string strComm =
                $" SELECT * FROM StudentsTB " +
                $" WHERE ID={id}";
            List<Student> ls = ExcReader(strComm);
            if (ls.Count == 1)
            {
                return ls[0];
            }
            return null;
        }

        public static Student GetStudentByEmailAndPassword(string email, string password)
        {
            string strComm =
                $" SELECT * FROM StudentsTB " +
                $" WHERE Email='{email}' AND Password='{password}'";
            List<Student> ls = ExcReader(strComm);
            if (ls.Count == 1)
            {
                return ls[0];
            }
            return null;
        }

        public static int DeleteStudentById(int id)
        {
            string strComm =
                    $" DELETE StudentsTB " +
                    $" WHERE ID={id}";

            return ExcNonQ(strComm);
        }

        public static int UpdateStudent(Student s)
        {
            string strComm =
                  $" UPDATE StudentsTB SET " +
                  $" Name='{s.Name}' , " +
                  $" Email='{s.Email}' , " +
                  $" Password='{s.Password}' , " +
                  $" Grade={s.Grade} " +
                  $" WHERE ID={s.ID}";

            return ExcNonQ(strComm);
        }

        public static int InsertStudent(Student student2Insert)
        {
            string strComm =
                $" INSERT INTO StudentsTB(Name, Email, Password, Grade) VALUES(" +
                $" '{student2Insert.Name}'," +
                $" '{student2Insert.Email}'," +
                $" '{student2Insert.Password}'," +
                $"  {student2Insert.Grade}); ";

            strComm += 
                " SELECT SCOPE_IDENTITY() AS[SCOPE_IDENTITY]; " ;

            return ExcReaderInsertStudent(strComm);            
        }

        private static int ExcNonQ(string comm2Run)
        {
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand comm = new SqlCommand(comm2Run, con);
            comm.Connection.Open();
            int res = comm.ExecuteNonQuery();
            comm.Connection.Close();
            return res;
        }

        public static int ExcReaderInsertStudent(string comm2Run)
        {
            int studentID = -1;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand comm = new SqlCommand(comm2Run, con);
            comm.Connection.Open();
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                studentID = int.Parse(reader["SCOPE_IDENTITY"].ToString());
            }
            comm.Connection.Close();
            return studentID;
        }
        public static List<Student> ExcReader(string comm2Run)
        {
            List<Student> sl = new List<Student>();
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand comm = new SqlCommand(comm2Run, con);
            comm.Connection.Open();
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                Student s = new Student(
                    (int)reader["ID"],
                    (string)reader["Name"], (string)reader["Email"], (string)reader["Password"],
                    (int)reader["Grade"]);
                sl.Add(s);
            }
            comm.Connection.Close();
            return sl;
        }
    }
}