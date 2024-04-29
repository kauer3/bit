namespace DVDCollection
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            listView1 = new ListView();
            title = new ColumnHeader();
            releaseDate = new ColumnHeader();
            studio = new ColumnHeader();
            director = new ColumnHeader();
            length = new ColumnHeader();
            price = new ColumnHeader();
            addBtn = new Button();
            deleteBtn = new Button();
            SuspendLayout();
            // 
            // listView1
            // 
            listView1.CheckBoxes = true;
            listView1.Columns.AddRange(new ColumnHeader[] { title, releaseDate, studio, director, length, price });
            listView1.FullRowSelect = true;
            listView1.HideSelection = true;
            listView1.Location = new Point(12, 12);
            listView1.MultiSelect = false;
            listView1.Name = "listView1";
            listView1.Size = new Size(780, 390);
            listView1.TabIndex = 0;
            listView1.UseCompatibleStateImageBehavior = false;
            listView1.View = View.Details;
            listView1.DoubleClick += editBtn_Click;
            // 
            // title
            // 
            title.Text = "Title";
            title.Width = 34;
            // 
            // releaseDate
            // 
            releaseDate.Text = "Realease Date";
            releaseDate.Width = 84;
            // 
            // studio
            // 
            studio.Text = "Studio";
            studio.Width = 46;
            // 
            // director
            // 
            director.Text = "Director";
            director.Width = 54;
            // 
            // length
            // 
            length.Text = "Length";
            length.Width = 49;
            // 
            // price
            // 
            price.Text = "Price";
            price.Width = 509;
            // 
            // addBtn
            // 
            addBtn.Location = new Point(12, 408);
            addBtn.Name = "addBtn";
            addBtn.Size = new Size(386, 30);
            addBtn.TabIndex = 1;
            addBtn.Text = "Add";
            addBtn.UseVisualStyleBackColor = true;
            addBtn.Click += addBtn_Click;
            // 
            // deleteBtn
            // 
            deleteBtn.Location = new Point(406, 408);
            deleteBtn.Name = "deleteBtn";
            deleteBtn.Size = new Size(386, 30);
            deleteBtn.TabIndex = 3;
            deleteBtn.Text = "Delete";
            deleteBtn.UseVisualStyleBackColor = true;
            deleteBtn.Click += deleteBtn_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(804, 445);
            Controls.Add(deleteBtn);
            Controls.Add(addBtn);
            Controls.Add(listView1);
            Name = "Form1";
            Text = "Movies";
            Load += Form1_Load;
            ResumeLayout(false);
        }

        #endregion

        private ListView listView1;
        private Button addBtn;
        private Button deleteBtn;
        private ColumnHeader title;
        private ColumnHeader releaseDate;
        private ColumnHeader studio;
        private ColumnHeader director;
        private ColumnHeader length;
        private ColumnHeader price;
    }
}
