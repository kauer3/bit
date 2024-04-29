using Microsoft.VisualBasic.ApplicationServices;
using System.Data.SQLite;
using static System.Runtime.InteropServices.JavaScript.JSType;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Window;
using System.Reflection;
using System.Windows.Forms;

namespace DVDCollection
{
    public partial class Form1 : Form
    {
        DB db = new DB();
        public class DVD
        {
            public int id;
            public string title;
            public string releaseDate;
            public string studio;
            public string director;
            public int length;
            public float price;
        }

        class DB
        {
            List<DVD> dvds = new List<DVD>();
            SQLiteConnection conn = new SQLiteConnection(@"Data Source=lab_09.db");
            public const string SQL_ADD_COMMAND = "INSERT INTO dvd_collection (title, release_date, studio, director, length, price) VALUES (@title, @release_date, @studio, @director, @length, @price)";
            public const string SQL_UPDATE_COMMAND = "UPDATE dvd_collection SET title = @title, release_date = @release_date, studio = @studio, director = @director, length = @length, price = @price WHERE id = @id";

            public List<DVD> LoadAllDVDs()
            {
                conn.Open();
                SQLiteCommand cmd = new SQLiteCommand("SELECT * FROM dvd_collection", conn);
                SQLiteDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    DVD dvd = new DVD();
                    dvd.id = reader.GetInt32(0);
                    dvd.title = reader.GetString(1);
                    dvd.releaseDate = reader.GetString(2);
                    dvd.studio = reader.GetString(3);
                    dvd.director = reader.GetString(4);
                    dvd.length = reader.GetInt32(5);
                    dvd.price = reader.GetFloat(6);
                    dvds.Add(dvd);
                }
                conn.Close();
                return dvds;
            }

            public void DeleteDVD(int id)
            {
                conn.Open();
                SQLiteCommand cmd = new SQLiteCommand("DELETE FROM dvd_collection WHERE id = @id", conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            public void AddUpdateDVD(DVD dvd, bool update)
            {
                conn.Open();
                SQLiteCommand cmd = new SQLiteCommand(update ? SQL_UPDATE_COMMAND : SQL_ADD_COMMAND, conn);
                cmd.Parameters.AddWithValue("@title", dvd.title);
                cmd.Parameters.AddWithValue("@release_date", dvd.releaseDate);
                cmd.Parameters.AddWithValue("@studio", dvd.studio);
                cmd.Parameters.AddWithValue("@director", dvd.director);
                cmd.Parameters.AddWithValue("@length", dvd.length);
                cmd.Parameters.AddWithValue("@price", dvd.price);
                if (update) cmd.Parameters.AddWithValue("@id", dvd.id);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            DB db = new DB();
            List<DVD> dvds = db.LoadAllDVDs();
            foreach (DVD dvd in dvds)
            {
                ListViewItem item = new ListViewItem(dvd.title);
                item.SubItems.Add(dvd.releaseDate);
                item.SubItems.Add(dvd.studio);
                item.SubItems.Add(dvd.director);
                item.SubItems.Add(dvd.length.ToString());
                item.SubItems.Add(dvd.price.ToString());
                item.Tag = dvd;
                listView1.Items.Add(item);

                foreach (ColumnHeader column in listView1.Columns)
                {
                    column.Width = -2;
                }
            }
        }

        private void addBtn_Click(object sender, EventArgs e)
        {
            using (DVDAddForm addForm = new DVDAddForm())
            {
                if (addForm.ShowDialog() == DialogResult.OK)
                {
                    DVD dvd = addForm.dvd;
                    ListViewItem item = new ListViewItem(dvd.title);
                    item.SubItems.Add(dvd.releaseDate);
                    item.SubItems.Add(dvd.studio);
                    item.SubItems.Add(dvd.director);
                    item.SubItems.Add(dvd.length.ToString());
                    item.SubItems.Add(dvd.price.ToString());
                    item.Tag = dvd;
                    listView1.Items.Add(item);

                    db.AddUpdateDVD(dvd, false);
                }
            }
        }

        private void editBtn_Click(object sender, EventArgs e)
        {
            uncheckBoxes();
            ListViewItem item = listView1.SelectedItems[0];
            DVD dvd = (DVD)item.Tag;
            using (DVDAddForm addForm = new DVDAddForm(dvd))
            {
                if (addForm.ShowDialog() == DialogResult.OK)
                {
                    IEnumerable<object> values = dvd.GetType().GetFields().Select(field => field.GetValue(dvd));

                    for (int i = 0; i < item.SubItems.Count; i++)
                    {
                        item.SubItems[i].Text = values.ElementAt(i + 1).ToString();
                    }
                    db.AddUpdateDVD(dvd, true);
                }
            }
        }

        private void deleteBtn_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem item in listView1.Items)
            {
                if (item.Checked)
                {
                    DVD dvd = (DVD)item.Tag;
                    db.DeleteDVD(dvd.id);
                    listView1.Items.Remove(item);
                }
            }
        }

        private void uncheckBoxes()
        {
            foreach (ListViewItem item in listView1.Items) item.Checked = false;
        }
    }
}
