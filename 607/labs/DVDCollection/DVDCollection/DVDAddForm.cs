using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DVDCollection
{
    public partial class DVDAddForm : Form
    {
        public Form1.DVD dvd = new Form1.DVD();

        public DVDAddForm()
        {
            InitializeComponent();
        }

        public DVDAddForm(Form1.DVD dvdToUpdate)
        {
            InitializeComponent();
            this.dvd = dvdToUpdate;
            title.Text = dvdToUpdate.title;
            release_date.Text = dvdToUpdate.releaseDate;
            studio.Text = dvdToUpdate.studio;
            director.Text = dvdToUpdate.director;
            length.Text = dvdToUpdate.length.ToString();
            price.Text = dvdToUpdate.price.ToString();
        }

        private void DVDAddForm_Load(object sender, EventArgs e)
        {
        }

        private void saveBtn_Click(object sender, EventArgs e)
        {
            dvd.title = title.Text.ToString();
            dvd.releaseDate = release_date.Text.ToString();
            dvd.studio = studio.Text.ToString();
            dvd.director = director.Text.ToString();
            dvd.length = int.Parse(length.Text);
            dvd.price = float.Parse(price.Text);
            DialogResult = DialogResult.OK;
            Close();
        }
    }
}
