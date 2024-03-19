namespace Card_Dealer
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
            components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            imageList1 = new ImageList(components);
            comboBox1 = new ComboBox();
            dealButton = new Button();
            saveButton = new Button();
            loadButton = new Button();
            statusTimer = new System.Windows.Forms.Timer(components);
            printButton = new Button();
            SuspendLayout();
            // 
            // imageList1
            // 
            imageList1.ColorDepth = ColorDepth.Depth32Bit;
            imageList1.ImageStream = (ImageListStreamer)resources.GetObject("imageList1.ImageStream");
            imageList1.TransparentColor = Color.Transparent;
            imageList1.Images.SetKeyName(0, "clubs-a-75.png");
            imageList1.Images.SetKeyName(1, "clubs-2-75.png");
            imageList1.Images.SetKeyName(2, "clubs-3-75.png");
            imageList1.Images.SetKeyName(3, "clubs-4-75.png");
            imageList1.Images.SetKeyName(4, "clubs-5-75.png");
            imageList1.Images.SetKeyName(5, "clubs-6-75.png");
            imageList1.Images.SetKeyName(6, "clubs-7-75.png");
            imageList1.Images.SetKeyName(7, "clubs-8-75.png");
            imageList1.Images.SetKeyName(8, "clubs-9-75.png");
            imageList1.Images.SetKeyName(9, "clubs-10-75.png");
            imageList1.Images.SetKeyName(10, "clubs-j-75.png");
            imageList1.Images.SetKeyName(11, "clubs-q-75.png");
            imageList1.Images.SetKeyName(12, "clubs-k-75.png");
            imageList1.Images.SetKeyName(13, "diamonds-a-75.png");
            imageList1.Images.SetKeyName(14, "diamonds-2-75.png");
            imageList1.Images.SetKeyName(15, "diamonds-3-75.png");
            imageList1.Images.SetKeyName(16, "diamonds-4-75.png");
            imageList1.Images.SetKeyName(17, "diamonds-5-75.png");
            imageList1.Images.SetKeyName(18, "diamonds-6-75.png");
            imageList1.Images.SetKeyName(19, "diamonds-7-75.png");
            imageList1.Images.SetKeyName(20, "diamonds-8-75.png");
            imageList1.Images.SetKeyName(21, "diamonds-9-75.png");
            imageList1.Images.SetKeyName(22, "diamonds-10-75.png");
            imageList1.Images.SetKeyName(23, "diamonds-j-75.png");
            imageList1.Images.SetKeyName(24, "diamonds-q-75.png");
            imageList1.Images.SetKeyName(25, "diamonds-k-75.png");
            imageList1.Images.SetKeyName(26, "hearts-a-75.png");
            imageList1.Images.SetKeyName(27, "hearts-2-75.png");
            imageList1.Images.SetKeyName(28, "hearts-3-75.png");
            imageList1.Images.SetKeyName(29, "hearts-4-75.png");
            imageList1.Images.SetKeyName(30, "hearts-5-75.png");
            imageList1.Images.SetKeyName(31, "hearts-6-75.png");
            imageList1.Images.SetKeyName(32, "hearts-7-75.png");
            imageList1.Images.SetKeyName(33, "hearts-8-75.png");
            imageList1.Images.SetKeyName(34, "hearts-9-75.png");
            imageList1.Images.SetKeyName(35, "hearts-10-75.png");
            imageList1.Images.SetKeyName(36, "hearts-j-75.png");
            imageList1.Images.SetKeyName(37, "hearts-q-75.png");
            imageList1.Images.SetKeyName(38, "hearts-k-75.png");
            imageList1.Images.SetKeyName(39, "spades-a-75.png");
            imageList1.Images.SetKeyName(40, "spades-2-75.png");
            imageList1.Images.SetKeyName(41, "spades-3-75.png");
            imageList1.Images.SetKeyName(42, "spades-4-75.png");
            imageList1.Images.SetKeyName(43, "spades-5-75.png");
            imageList1.Images.SetKeyName(44, "spades-6-75.png");
            imageList1.Images.SetKeyName(45, "spades-7-75.png");
            imageList1.Images.SetKeyName(46, "spades-8-75.png");
            imageList1.Images.SetKeyName(47, "spades-9-75.png");
            imageList1.Images.SetKeyName(48, "spades-10-75.png");
            imageList1.Images.SetKeyName(49, "spades-j-75.png");
            imageList1.Images.SetKeyName(50, "spades-q-75.png");
            imageList1.Images.SetKeyName(51, "spades-k-75.png");
            imageList1.Images.SetKeyName(52, "back-blue-75-1.png");
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Items.AddRange(new object[] { "Hand 1", "Hand 2", "Hand 3", "Hand 4" });
            comboBox1.Location = new Point(10, 10);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(121, 23);
            comboBox1.TabIndex = 0;
            comboBox1.SelectedIndexChanged += SelectedIndexChanged;
            // 
            // dealButton
            // 
            dealButton.Location = new Point(146, 10);
            dealButton.Name = "dealButton";
            dealButton.Size = new Size(121, 23);
            dealButton.TabIndex = 1;
            dealButton.Text = "Deal";
            dealButton.UseVisualStyleBackColor = true;
            dealButton.Click += DealButton_Click;
            // 
            // saveButton
            // 
            saveButton.Location = new Point(285, 10);
            saveButton.Name = "saveButton";
            saveButton.Size = new Size(121, 23);
            saveButton.TabIndex = 2;
            saveButton.Text = "Save";
            saveButton.UseVisualStyleBackColor = true;
            saveButton.Click += SaveButton_Click;
            // 
            // loadButton
            // 
            loadButton.Location = new Point(423, 10);
            loadButton.Name = "loadButton";
            loadButton.Size = new Size(121, 23);
            loadButton.TabIndex = 3;
            loadButton.Text = "Load";
            loadButton.UseVisualStyleBackColor = true;
            loadButton.Click += LoadButton_Click;
            // 
            // printButton
            // 
            printButton.Location = new Point(561, 10);
            printButton.Name = "printButton";
            printButton.Size = new Size(121, 23);
            printButton.TabIndex = 4;
            printButton.Text = "Print";
            printButton.UseVisualStyleBackColor = true;
            printButton.Click += PrintButton_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(999, 450);
            Controls.Add(printButton);
            Controls.Add(loadButton);
            Controls.Add(saveButton);
            Controls.Add(dealButton);
            Controls.Add(comboBox1);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
        }

        #endregion

        private ImageList imageList1;
        private ComboBox comboBox1;
        private Button dealButton;
        private Button saveButton;
        private Button loadButton;
        private System.Windows.Forms.Timer statusTimer;
        private Button printButton;
    }
}
