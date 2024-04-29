namespace DVDCollection
{
    partial class DVDAddForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            button2 = new Button();
            button1 = new Button();
            title = new TextBox();
            label1 = new Label();
            label2 = new Label();
            release_date = new TextBox();
            label3 = new Label();
            director = new TextBox();
            label4 = new Label();
            studio = new TextBox();
            label6 = new Label();
            price = new TextBox();
            label7 = new Label();
            length = new TextBox();
            SuspendLayout();
            // 
            // button2
            // 
            button2.DialogResult = DialogResult.Cancel;
            button2.Location = new Point(332, 186);
            button2.Name = "button2";
            button2.Size = new Size(195, 23);
            button2.TabIndex = 5;
            button2.Text = "Cancel";
            button2.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            button1.DialogResult = DialogResult.OK;
            button1.Location = new Point(132, 186);
            button1.Name = "button1";
            button1.Size = new Size(195, 23);
            button1.TabIndex = 4;
            button1.Text = "OK";
            button1.UseVisualStyleBackColor = true;
            button1.Click += saveBtn_Click;
            // 
            // title
            // 
            title.Location = new Point(132, 12);
            title.Name = "title";
            title.Size = new Size(395, 23);
            title.TabIndex = 6;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(12, 15);
            label1.Name = "label1";
            label1.Size = new Size(29, 15);
            label1.TabIndex = 8;
            label1.Text = "Title";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 44);
            label2.Name = "label2";
            label2.Size = new Size(73, 15);
            label2.TabIndex = 10;
            label2.Text = "Release Date";
            // 
            // release_date
            // 
            release_date.Location = new Point(132, 41);
            release_date.Name = "release_date";
            release_date.Size = new Size(395, 23);
            release_date.TabIndex = 9;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(12, 102);
            label3.Name = "label3";
            label3.Size = new Size(49, 15);
            label3.TabIndex = 14;
            label3.Text = "Director";
            // 
            // director
            // 
            director.Location = new Point(132, 99);
            director.Name = "director";
            director.Size = new Size(395, 23);
            director.TabIndex = 13;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(12, 73);
            label4.Name = "label4";
            label4.Size = new Size(41, 15);
            label4.TabIndex = 12;
            label4.Text = "Studio";
            // 
            // studio
            // 
            studio.Location = new Point(132, 70);
            studio.Name = "studio";
            studio.Size = new Size(395, 23);
            studio.TabIndex = 11;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(12, 160);
            label6.Name = "label6";
            label6.Size = new Size(33, 15);
            label6.TabIndex = 18;
            label6.Text = "Price";
            // 
            // price
            // 
            price.Location = new Point(132, 157);
            price.Name = "price";
            price.Size = new Size(395, 23);
            price.TabIndex = 17;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(12, 131);
            label7.Name = "label7";
            label7.Size = new Size(44, 15);
            label7.TabIndex = 16;
            label7.Text = "Length";
            // 
            // length
            // 
            length.Location = new Point(132, 128);
            length.Name = "length";
            length.Size = new Size(395, 23);
            length.TabIndex = 15;
            // 
            // DVDAddForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(539, 218);
            Controls.Add(label6);
            Controls.Add(price);
            Controls.Add(label7);
            Controls.Add(length);
            Controls.Add(label3);
            Controls.Add(director);
            Controls.Add(label4);
            Controls.Add(studio);
            Controls.Add(label2);
            Controls.Add(release_date);
            Controls.Add(label1);
            Controls.Add(title);
            Controls.Add(button2);
            Controls.Add(button1);
            Name = "DVDAddForm";
            Text = "DVDAddForm";
            Load += DVDAddForm_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button button2;
        private Button button1;
        private TextBox title;
        private Label label1;
        private Label label2;
        private TextBox release_date;
        private Label label3;
        private TextBox director;
        private Label label4;
        private TextBox studio;
        private Label label6;
        private TextBox price;
        private Label label7;
        private TextBox length;
    }
}