namespace PDF_Creation
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
            closeButton = new Button();
            CreateReportButton = new Button();
            statusTimer = new System.Windows.Forms.Timer(components);
            SuspendLayout();
            // 
            // closeButton
            // 
            closeButton.Location = new Point(12, 12);
            closeButton.Name = "closeButton";
            closeButton.Size = new Size(152, 23);
            closeButton.TabIndex = 0;
            closeButton.Text = "Close";
            closeButton.UseVisualStyleBackColor = true;
            closeButton.Click += closeButton_Click;
            // 
            // CreateReportButton
            // 
            CreateReportButton.Location = new Point(170, 12);
            CreateReportButton.Name = "CreateReportButton";
            CreateReportButton.Size = new Size(154, 23);
            CreateReportButton.TabIndex = 1;
            CreateReportButton.Text = "Create Report";
            CreateReportButton.UseVisualStyleBackColor = true;
            CreateReportButton.Click += CreateReportButton_Click;
            // 
            // statusTimer
            // 
            statusTimer.Tick += StatusTimer_Tick;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(CreateReportButton);
            Controls.Add(closeButton);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
        }

        #endregion

        private Button closeButton;
        private Button CreateReportButton;
        private System.Windows.Forms.Timer statusTimer;
    }
}
