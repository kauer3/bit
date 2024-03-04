namespace Concentration_Game
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
            timer = new System.Windows.Forms.Timer(components);
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
            imageList1.Images.SetKeyName(8, "diamonds-a-75.png");
            imageList1.Images.SetKeyName(9, "diamonds-2-75.png");
            imageList1.Images.SetKeyName(10, "diamonds-3-75.png");
            imageList1.Images.SetKeyName(11, "diamonds-4-75.png");
            imageList1.Images.SetKeyName(12, "diamonds-5-75.png");
            imageList1.Images.SetKeyName(13, "diamonds-6-75.png");
            imageList1.Images.SetKeyName(14, "diamonds-7-75.png");
            imageList1.Images.SetKeyName(15, "diamonds-8-75.png");
            imageList1.Images.SetKeyName(16, "hearts-a-75.png");
            imageList1.Images.SetKeyName(17, "hearts-2-75.png");
            imageList1.Images.SetKeyName(18, "hearts-3-75.png");
            imageList1.Images.SetKeyName(19, "hearts-4-75.png");
            imageList1.Images.SetKeyName(20, "hearts-5-75.png");
            imageList1.Images.SetKeyName(21, "hearts-6-75.png");
            imageList1.Images.SetKeyName(22, "hearts-7-75.png");
            imageList1.Images.SetKeyName(23, "hearts-8-75.png");
            imageList1.Images.SetKeyName(24, "spades-a-75.png");
            imageList1.Images.SetKeyName(25, "spades-2-75.png");
            imageList1.Images.SetKeyName(26, "spades-3-75.png");
            imageList1.Images.SetKeyName(27, "spades-4-75.png");
            imageList1.Images.SetKeyName(28, "spades-5-75.png");
            imageList1.Images.SetKeyName(29, "spades-6-75.png");
            imageList1.Images.SetKeyName(30, "spades-7-75.png");
            imageList1.Images.SetKeyName(31, "spades-8-75.png");
            imageList1.Images.SetKeyName(32, "back-red-75-2.png");
            // 
            // timer
            // 
            timer.Interval = 1000;
            timer.Tick += Timer_Tick;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(882, 504);
            Name = "Form1";
            Text = "Concentration Game - Score: 0";
            Load += Form1_Load;
            ResumeLayout(false);
        }

        #endregion

        private ImageList imageList1;
        private System.Windows.Forms.Timer timer;
    }
}
