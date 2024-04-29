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
                    string query = "SELECT tblstudents.studentID, tblstudents.surname, tblstudents.firstname, tblsubjects.name, tbltimetable.day, tbltimetable.period FROM tblstudents JOIN tblenrolment ON tblstudents.studentID = tblenrolment.studentID JOIN tblsubjects ON tblenrolment.sid = tblsubjects.sid JOIN tbltimetable ON tblsubjects.sid = tbltimetable.sid ORDER BY tblstudents.studentID, tbltimetable.day, tbltimetable.period";
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
                    ISheet sheet;
                    while (reader.Read())
                    {
                        if (studentID != reader.GetInt32("studentID"))
                        {
                            sheet = workbook.CreateSheet(student.firstname);
                            Console.WriteLine("studentID: {0}", reader.GetInt32("studentID"));
                            studentID = reader.GetInt32("studentID");
                            /*
                            student = new Student();
                            subject = new Subject();
                            timetable = new Timetable();
                            */
                        }
                        if (day != reader.GetInt32("day") || period != reader.GetInt32("period"))
                        {
                            Console.WriteLine("Day: {0}, Period: {1}", reader.GetInt32("day"), reader.GetInt32("period"));
                            day = reader.GetInt32("day");
                            period = reader.GetInt32("period");
                            /*
                             *student = new Student();
                             *subject = new Subject();
                             *timetable = new Timetable();
                            */
                        }
                        /*
                        student.studentID = reader.GetInt32("studentID");
                        student.surname = reader.GetString("surname");
                        student.firstname = reader.GetString("firstname");
                        subject.name = reader.GetString("name");
                        timetable.day = reader.GetInt32("day");
                        timetable.period = reader.GetInt32("period");
                        */

                        Console.WriteLine("Student ID: {0}, Surname: {1}, Firstname: {2}, Subject: {3}, Day: {4}, Period: {5}",
                                                       student.studentID, student.surname, student.firstname, subject.name, (Days)timetable.day, timetable.period);

                        /*
                        students.Add(student);
                        subjects.Add(subject);

                        IRow row = sheet.CreateRow(0);
                        ICell cell = row.CreateCell(0);
                        cell.SetCellValue("Student ID");
                        cell = row.CreateCell(1);
                        cell.SetCellValue("Surname");
                        cell = row.CreateCell(2);
                        cell.SetCellValue("Firstname");
                        cell = row.CreateCell(3);
                        cell.SetCellValue("Subject");
                        cell = row.CreateCell(4);
                        cell.SetCellValue("Day");
                        cell = row.CreateCell(5);
                        cell.SetCellValue("Period");
                        cell = row.CreateCell(6);
                        cell.SetCellValue("Time");
                        cell = row.CreateCell(7);

                        row = sheet.CreateRow(1);
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
            }

            catch (MySqlException ex)
            {
                Console.WriteLine("Error: {0}", ex.ToString());
            }
        }
    }
}
