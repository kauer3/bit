namespace QuizForm
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
            label1 = new Label();
            answerBtn1 = new RadioButton();
            answerbtn2 = new RadioButton();
            answerbtn3 = new RadioButton();
            answerbtn4 = new RadioButton();
            confirmBtn = new Button();
            label2 = new Label();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(22, 19);
            label1.Name = "label1";
            label1.Size = new Size(0, 15);
            label1.TabIndex = 0;
            // 
            // answerBtn1
            // 
            answerBtn1.AutoSize = true;
            answerBtn1.Location = new Point(22, 88);
            answerBtn1.Name = "answerBtn1";
            answerBtn1.Size = new Size(94, 19);
            answerBtn1.TabIndex = 1;
            answerBtn1.TabStop = true;
            answerBtn1.Text = "radioButton1";
            answerBtn1.UseVisualStyleBackColor = true;
            answerBtn1.CheckedChanged += checkedChanged;
            // 
            // answerbtn2
            // 
            answerbtn2.AutoSize = true;
            answerbtn2.ForeColor = SystemColors.ActiveCaptionText;
            answerbtn2.Location = new Point(22, 113);
            answerbtn2.Name = "answerbtn2";
            answerbtn2.Size = new Size(94, 19);
            answerbtn2.TabIndex = 2;
            answerbtn2.TabStop = true;
            answerbtn2.Text = "radioButton2";
            answerbtn2.UseVisualStyleBackColor = true;
            answerbtn2.CheckedChanged += checkedChanged;
            // 
            // answerbtn3
            // 
            answerbtn3.AutoSize = true;
            answerbtn3.Location = new Point(22, 138);
            answerbtn3.Name = "answerbtn3";
            answerbtn3.Size = new Size(94, 19);
            answerbtn3.TabIndex = 3;
            answerbtn3.TabStop = true;
            answerbtn3.Text = "radioButton3";
            answerbtn3.UseVisualStyleBackColor = true;
            answerbtn3.CheckedChanged += checkedChanged;
            // 
            // answerbtn4
            // 
            answerbtn4.AutoSize = true;
            answerbtn4.Location = new Point(22, 163);
            answerbtn4.Name = "answerbtn4";
            answerbtn4.Size = new Size(94, 19);
            answerbtn4.TabIndex = 4;
            answerbtn4.TabStop = true;
            answerbtn4.Text = "radioButton4";
            answerbtn4.UseVisualStyleBackColor = true;
            answerbtn4.CheckedChanged += checkedChanged;
            // 
            // confirmBtn
            // 
            confirmBtn.Location = new Point(22, 235);
            confirmBtn.Name = "confirmBtn";
            confirmBtn.Size = new Size(125, 23);
            confirmBtn.TabIndex = 5;
            confirmBtn.Text = "Confirm";
            confirmBtn.UseVisualStyleBackColor = true;
            confirmBtn.Click += confirmBtn_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(22, 202);
            label2.Name = "label2";
            label2.Size = new Size(0, 15);
            label2.TabIndex = 6;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(label2);
            Controls.Add(confirmBtn);
            Controls.Add(answerbtn4);
            Controls.Add(answerbtn3);
            Controls.Add(answerbtn2);
            Controls.Add(answerBtn1);
            Controls.Add(label1);
            Name = "Form1";
            Text = "Quiz";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private RadioButton answerBtn1;
        private RadioButton answerbtn2;
        private RadioButton answerbtn3;
        private RadioButton answerbtn4;
        private Button confirmBtn;
        private Label label2;
    }
}
