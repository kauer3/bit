using MySql.Data.MySqlClient;

using System.IO;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using NPOI.HSSF.UserModel;
using System.Xml.Linq;
using NPOI.OpenXmlFormats.Spreadsheet;
using System.Diagnostics.Tracing;
using System.Collections.Generic;

namespace ExcelWorkbook
{
    class Program
    {

        const string CSTRING = "Server=localhost;Database=transactions;Uid=student;Pwd=secret;";
        const string filepath = "customers.xlsx";

        static void Main(string[] args)
        {
            string queryNewIds = "SELECT * FROM transactions WHERE CustomerID NOT IN (";
            float transactionAmount;

            System.Text.Encoding.RegisterProvider(System.Text.CodePagesEncodingProvider.Instance);

            using (FileStream fileStream = new FileStream(filepath, FileMode.Open, FileAccess.Read))
            {
                IWorkbook workbook = WorkbookFactory.Create(fileStream);
                ISheet sheet = workbook.GetSheetAt(0);
                string customer_id;
                string queryCurrentId;
                IRow row;

                try
                {
                    for (int i = 1; i <= sheet.LastRowNum; i++)
                    {
                        row = sheet.GetRow(i);

                        customer_id = row.GetCell(0).StringCellValue;
                        queryCurrentId = "SELECT * FROM transactions WHERE CustomerID='" + customer_id + "';";

                        queryNewIds += "'" + customer_id;
                        queryNewIds += i == sheet.LastRowNum ? "') ORDER BY CustomerID;" : "', ";

                        transactionAmount = 0;
                        using (MySqlConnection conn = new MySqlConnection(CSTRING))
                        {
                            conn.Open();
                            MySqlCommand cmd = new MySqlCommand(queryCurrentId, conn);
                            MySqlDataReader reader = cmd.ExecuteReader();
                            while (reader.Read())
                            {
                                transactionAmount += reader.GetFloat(3);
                            }
                            conn.Close();
                        }
                        ICell cell = row.GetCell(3);

                        Console.WriteLine("Customer ID: " + customer_id + " - Transaction Amount: " + transactionAmount.ToString());

                        if (cell.NumericCellValue != transactionAmount)
                        {
                            cell.SetCellValue(cell.NumericCellValue + transactionAmount);
                        }
                    }

                    using (MySqlConnection conn = new MySqlConnection(CSTRING))
                    {
                        Console.WriteLine(queryNewIds);
                        conn.Open();
                        MySqlCommand cmd = new MySqlCommand(queryNewIds, conn);
                        MySqlDataReader reader = cmd.ExecuteReader();
                        string currentId = null;
                        transactionAmount = 0;

                        while (reader.Read())
                        {
                            if (reader.GetFloat(3) > 0)
                            {
                                Console.WriteLine("Customer ID: " + reader.GetString(1) + " - Single Transaction of: " + reader.GetFloat(3));
                                if (currentId != reader.GetString(1))
                                {
                                    if (currentId != null && reader.GetString(1).Length > 0)
                                    {
                                        row = sheet.CreateRow(sheet.LastRowNum + 1);
                                        row.CreateCell(0).SetCellValue(currentId);
                                        row.CreateCell(3).SetCellValue(transactionAmount);
                                        Console.WriteLine("Customer ID: " + currentId + " - Total Transaction Amount: " + transactionAmount);
                                    }
                                    currentId = reader.GetString(1);
                                    transactionAmount = reader.GetFloat(3);
                                }
                                else
                                {
                                    transactionAmount += reader.GetFloat(3);
                                }
                            }
                        }

                        row = sheet.CreateRow(sheet.LastRowNum + 1);
                        row.CreateCell(0).SetCellValue(currentId);
                        row.CreateCell(3).SetCellValue(transactionAmount);
                        Console.WriteLine("Customer ID: " + currentId + " - Total Transaction Amount: " + transactionAmount);

                        conn.Close();
                    }

                    using (FileStream file = new FileStream(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads", "Lab11_Kaue.xlsx"), FileMode.Create, FileAccess.Write))
                    {
                        workbook.Write(file);
                    }

                }
                catch (MySqlException e)
                {
                    Console.WriteLine("Error: " + e.ToString());
                }
            }
        }
    }
}
