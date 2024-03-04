namespace CardsForm_Lab2
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
            PictureBoxDeck = new PictureBox();
            imageList1 = new ImageList(components);
            PictureBoxCard = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)PictureBoxDeck).BeginInit();
            ((System.ComponentModel.ISupportInitialize)PictureBoxCard).BeginInit();
            SuspendLayout();
            // 
            // PictureBoxDeck
            // 
            PictureBoxDeck.Image = Properties.Resources.back_red_75_2;
            PictureBoxDeck.Location = new Point(29, 25);
            PictureBoxDeck.Name = "PictureBoxDeck";
            PictureBoxDeck.Size = new Size(76, 109);
            PictureBoxDeck.TabIndex = 0;
            PictureBoxDeck.TabStop = false;
            PictureBoxDeck.Click += pictureBox1_Click;
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
            imageList1.Images.SetKeyName(11, "clubs-k-75.png");
            imageList1.Images.SetKeyName(12, "clubs-q-75.png");
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
            imageList1.Images.SetKeyName(24, "diamonds-k-75.png");
            imageList1.Images.SetKeyName(25, "diamonds-q-75.png");
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
            imageList1.Images.SetKeyName(37, "hearts-k-75.png");
            imageList1.Images.SetKeyName(38, "hearts-q-75.png");
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
            imageList1.Images.SetKeyName(50, "spades-k-75.png");
            imageList1.Images.SetKeyName(51, "spades-q-75.png");
            imageList1.Images.SetKeyName(52, "joker-b-75.png");
            imageList1.Images.SetKeyName(53, "joker-r-75.png");
            imageList1.Images.SetKeyName(54, "back-blue-75-1.png");
            imageList1.Images.SetKeyName(55, "back-blue-75-2.png");
            imageList1.Images.SetKeyName(56, "back-blue-75-3.png");
            imageList1.Images.SetKeyName(57, "back-red-75-1.png");
            imageList1.Images.SetKeyName(58, "back-red-75-3.png");
            imageList1.Images.SetKeyName(59, "back-red-75-2.png");
            // 
            // PictureBoxCard
            // 
            PictureBoxCard.Location = new Point(134, 25);
            PictureBoxCard.Name = "PictureBoxCard";
            PictureBoxCard.Size = new Size(76, 109);
            PictureBoxCard.TabIndex = 1;
            PictureBoxCard.TabStop = false;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(PictureBoxCard);
            Controls.Add(PictureBoxDeck);
            Name = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)PictureBoxDeck).EndInit();
            ((System.ComponentModel.ISupportInitialize)PictureBoxCard).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private PictureBox PictureBoxDeck;
        private ImageList imageList1;
        private PictureBox PictureBoxCard;
    }
}
