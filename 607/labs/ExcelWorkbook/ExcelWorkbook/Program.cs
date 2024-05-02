using MySql.Data.MySqlClient;

using System.IO;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using NPOI.HSSF.UserModel;
using System.Xml.Linq;

namespace ExcelWorkbook
{
    class Program
    {
        class Student
        {
            public int studentID { get; set; }
            public string surname { get; set; }
            public string firstname { get; set; }
            public List<Subject> subjects { get; set; }
        }

        class Subject
        {
            // Subject ID
            public int sid { get; set; }
            public string name { get; set; }
            public List<Timetable> timetables { get; set; }
        }

        class Enrolment
        {
            // Enrolment ID
            public int eid { get; set; }
            public int studentID { get; set; }
            public int sid { get; set; }
        }

        class Timetable
        {
            // Timetable ID
            public int tid { get; set; }
            public int sid { get; set; }
            public int day { get; set; }
            public int period { get; set; }
        }

        enum Days
        {
            Monday = 1,
            Tuesday = 2,
            Wednesday = 3,
            Thursday = 4,
            Friday = 5
        }

        const string CSTRING = "Server=localhost;Database=excel_worksheet;Uid=student;Pwd=secret;";

        static void Main(string[] args)
        {
            try
            {
                using (MySqlConnection conn = new MySqlConnection(CSTRING))
                {
                    conn.Open();
                    string query = "SELECT tblstudents.studentID, tblstudents.surname, tblstudents.firstname, tblsubjects.name, tbltimetable.day, tbltimetable.period FROM tblstudents JOIN tblenrolment ON tblstudents.studentID = tblenrolment.studentID JOIN tblsubjects ON tblenrolment.sid = tblsubjects.sid JOIN tbltimetable ON tblsubjects.sid = tbltimetable.sid ORDER BY tblstudents.studentID, tbltimetable.period, tbltimetable.day";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    MySqlDataReader reader = cmd.ExecuteReader();
                    Student student = new Student();
                    Subject subject = new Subject();
                    Timetable timetable = new Timetable();

                    List<Student> students = new List<Student>();
                    List<Subject> subjects = new List<Subject>();
                    List<Timetable> timetables = new List<Timetable>();
                    int studentID = 0;
                    int day = 0;
                    int period = 0;

                    IWorkbook workbook = new XSSFWorkbook();
                    ISheet studentTimetable;
                    IRow row;
                    ICell cell;
                    while (reader.Read())
                    {
                        student.studentID = reader.GetInt32("studentID");
                        if (studentID != student.studentID)
                        {
                            /*
                            student.surname = reader.GetString("surname");
                            student.firstname = reader.GetString("firstname");
                            studentTimetable = workbook.CreateSheet(student.firstname + " " + student.surname);
                            row = studentTimetable.CreateRow(0);
                            cell = row.CreateCell(1);
                            cell.SetCellValue("Monday");
                            cell = row.CreateCell(2);
                            cell.SetCellValue("Tuesday");
                            cell = row.CreateCell(3);
                            cell.SetCellValue("Wednesday");
                            cell = row.CreateCell(4);
                            cell.SetCellValue("Thursday");
                            cell = row.CreateCell(5);
                            cell.SetCellValue("Friday");
                            */
                            Console.WriteLine("Student ID: {0}, Name: {1} {2}", student.studentID, student.firstname, student.surname);
                            studentID = student.studentID;

                            return;

                            /*
                            student = new Student();
                            subject = new Subject();
                            timetable = new Timetable();
                            */
                        }

                        timetable.period = reader.GetInt32("period");
                        studentTimetable = workbook.GetSheet(student.firstname + " " + student.surname);
                        if (period != timetable.period)
                        {
                            //row = studentTimetable.CreateRow(timetable.period);
                            Console.WriteLine("Period: {0}", timetable.period);
                            period = timetable.period;
                            /*
                             *student = new Student();
                             *subject = new Subject();
                             *timetable = new Timetable();
                            */
                        }

                        timetable.day = reader.GetInt32("day");
                        if (day != timetable.day)
                        {
                            Console.WriteLine("Day: {0}", (Days)timetable.day);
                            day = timetable.day;
                            //period = reader.GetInt32("period");
                            /*
                             *student = new Student();
                             *subject = new Subject();
                             *timetable = new Timetable();
                            */
                        }

                        subject.name = reader.GetString("name");

                        Console.WriteLine("Student ID: {0}, Subject: {1}, Day: {2}, Period: {3}",
                        student.studentID, subject.name, (Days)timetable.day, timetable.period);
/*
                        Console.WriteLine("Subject: {0}", subject.name);
                        students.Add(student);
                        subjects.Add(subject);


                        row = studentTimetable.CreateRow(timetable.period);

                        cell = row.CreateCell(0);
                        cell.SetCellValue(student.studentID);
                        cell = row.CreateCell(1);
                        cell.SetCellValue(student.surname);
                        cell = row.CreateCell(2);
                        cell.SetCellValue(student.firstname);
                        cell = row.CreateCell(3);
                        cell.SetCellValue(subject.name);
                        cell = row.CreateCell(4);
                        cell.SetCellValue(timetable.day);
                        cell = row.CreateCell(5);
                        cell.SetCellValue(timetable.period);
                        cell = row.CreateCell(6);
                        cell.SetCellValue(((Days)timetable.day).ToString() + " " + timetable.period);
                        cell = row.CreateCell(7);
*/
                    }
                }

                /*
                using (FileStream file = new FileStream(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads", "lab10.xlsx"), FileMode.Create, FileAccess.Write))
                {
                    workbook.Write(file);
                }
                */

                /*
                IWorkbook workbook = new XSSFWorkbook();

                ISheet sheet = workbook.CreateSheet("Sheet1");

                IRow row = sheet.CreateRow(0);

                ICell cell = row.CreateCell(0);
                cell.SetCellValue("Hello, World!");

                using (FileStream file = new FileStream("workbook.xlsx", FileMode.Create, FileAccess.Write))
                {
                    workbook.Write(file);
                }
                */
            }

            catch (MySqlException e)
            {
                Console.WriteLine("Error: " + e.ToString());
            }
        }

        private void CreateStudentTimetable()
        {
            /*
            ISheet studentTimetable = workbook.CreateSheet("Student Timetable");
            IRow row = studentTimetable.CreateRow(0);
            ICell cell = row.CreateCell(1);
            cell.SetCellValue("Monday");
            cell = row.CreateCell(2);
            cell.SetCellValue("Tuesday");
            cell = row.CreateCell(3);
            cell.SetCellValue("Wednesday");
            cell = row.CreateCell(4);
            cell.SetCellValue("Thursday");
            cell = row.CreateCell(5);
            cell.SetCellValue("Friday");

            row = studentTimetable.CreateRow(1);
            cell = row.CreateCell(0);
            cell.SetCellValue(timetable.period);
            cell = row.CreateCell(1);
            cell.SetCellValue(subject.name);
            cell = row.CreateCell(4);
            cell.SetCellValue(timetable.day);
            cell = row.CreateCell(5);
            cell.SetCellValue(timetable.period);
            cell = row.CreateCell(6);
            cell.SetCellValue(((Days)timetable.day).ToString() + " " + timetable.period);
            cell = row.CreateCell(7);

            using (FileStream file = new FileStream(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads", "lab10.xlsx"), FileMode.Create, FileAccess.Write))
            {
                workbook.Write(file);
            }
            */
        }
    }
}
