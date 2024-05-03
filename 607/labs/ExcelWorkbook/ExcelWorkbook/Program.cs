using MySql.Data.MySqlClient;

using System.IO;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using NPOI.HSSF.UserModel;
using System.Xml.Linq;
using NPOI.OpenXmlFormats.Spreadsheet;
using System.Diagnostics.Tracing;

namespace ExcelWorkbook
{
    class Program
    {
        class Student
        {
            public int studentID { get; set; }
            public string surname { get; set; }
            public string firstname { get; set; }
        }

        class Timetable
        {
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
        const string QUERY = "SELECT tblstudents.studentID, tblstudents.surname, tblstudents.firstname, tblsubjects.name, tbltimetable.day, tbltimetable.period FROM tblstudents JOIN tblenrolment ON tblstudents.studentID = tblenrolment.studentID JOIN tblsubjects ON tblenrolment.sid = tblsubjects.sid JOIN tbltimetable ON tblsubjects.sid = tbltimetable.sid ORDER BY tblstudents.studentID, tbltimetable.period, tbltimetable.day";

        static void Main(string[] args)
        {
            try
            {
                using (MySqlConnection conn = new MySqlConnection(CSTRING))
                {
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand(QUERY, conn);
                    MySqlDataReader reader = cmd.ExecuteReader();

                    Student student = new Student();
                    Timetable timetable = new Timetable();
                    string subjectName;
                    int studentID = 0;
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
                            student.surname = reader.GetString("surname");
                            student.firstname = reader.GetString("firstname");
                            Console.WriteLine("Creating new sheet for " + student.firstname + " " + student.surname);
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
                            studentID = student.studentID;
                        }

                        timetable.period = reader.GetInt32("period");
                        timetable.day = reader.GetInt32("day");
                        subjectName = reader.GetString("name");
                        studentTimetable = workbook.GetSheet(student.firstname + " " + student.surname);

                        if (period != timetable.period)
                        {
                            row = studentTimetable.CreateRow(timetable.period);
                            cell = row.CreateCell(0);
                            cell.SetCellValue(timetable.period);
                            period = timetable.period;
                            Console.WriteLine("Creating new row for period " + period);
                        }
                        else
                        {
                            row = studentTimetable.GetRow(timetable.period);
                        }
                        row.CreateCell(timetable.day).SetCellValue(subjectName);
                        Console.WriteLine("Adding " + subjectName + " to period " + timetable.period + " on " + (Days)timetable.day);
                    }

                    using (FileStream file = new FileStream(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads", "Lab10_Kaue.xlsx"), FileMode.Create, FileAccess.Write))
                    {
                        workbook.Write(file);
                    }
                }
            }
            catch (MySqlException e)
            {
                Console.WriteLine("Error: " + e.ToString());
            }
        }
    }
}
