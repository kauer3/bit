﻿namespace Exercise3
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
            button1 = new Button();
            cardPB = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)cardPB).BeginInit();
            SuspendLayout();
            // 
            // button1
            // 
            button1.Location = new Point(51, 38);
            button1.Name = "button1";
            button1.Size = new Size(102, 34);
            button1.TabIndex = 0;
            button1.Text = "Request Card";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // cardPB
            // 
            cardPB.Location = new Point(63, 78);
            cardPB.Name = "cardPB";
            cardPB.Size = new Size(82, 110);
            cardPB.TabIndex = 1;
            cardPB.TabStop = false;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(206, 263);
            Controls.Add(cardPB);
            Controls.Add(button1);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)cardPB).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Button button1;
        private PictureBox cardPB;
    }
}
