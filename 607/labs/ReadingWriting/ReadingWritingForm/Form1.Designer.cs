namespace ReadingWritingForm
{
    partial class playersLst
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
            connectBtn = new Button();
            reqCardBtn = new Button();
            sendNameBtn = new Button();
            nameTxt = new TextBox();
            announcTxt = new TextBox();
            sendAnnouncBtn = new Button();
            listBox1 = new ListBox();
            refreshBtn = new Button();
            statusStrip = new StatusStrip();
            timer = new System.Windows.Forms.Timer(components);
            SuspendLayout();
            // 
            // connectBtn
            // 
            connectBtn.Location = new Point(112, 361);
            connectBtn.Name = "connectBtn";
            connectBtn.Size = new Size(189, 32);
            connectBtn.TabIndex = 0;
            connectBtn.Text = "Connect";
            connectBtn.UseVisualStyleBackColor = true;
            connectBtn.Click += connectBtn_Click;
            // 
            // reqCardBtn
            // 
            reqCardBtn.Enabled = false;
            reqCardBtn.Location = new Point(500, 361);
            reqCardBtn.Name = "reqCardBtn";
            reqCardBtn.Size = new Size(179, 32);
            reqCardBtn.TabIndex = 1;
            reqCardBtn.Text = "Request Card";
            reqCardBtn.UseVisualStyleBackColor = true;
            reqCardBtn.Click += reqCardBtn_Click;
            // 
            // sendNameBtn
            // 
            sendNameBtn.Enabled = false;
            sendNameBtn.Location = new Point(509, 38);
            sendNameBtn.Name = "sendNameBtn";
            sendNameBtn.Size = new Size(170, 23);
            sendNameBtn.TabIndex = 2;
            sendNameBtn.Text = "Send Name";
            sendNameBtn.UseVisualStyleBackColor = true;
            sendNameBtn.Click += sendNameBtn_Click;
            // 
            // nameTxt
            // 
            nameTxt.Location = new Point(112, 38);
            nameTxt.Name = "nameTxt";
            nameTxt.Size = new Size(391, 23);
            nameTxt.TabIndex = 3;
            // 
            // announcTxt
            // 
            announcTxt.Location = new Point(112, 67);
            announcTxt.Name = "announcTxt";
            announcTxt.Size = new Size(391, 23);
            announcTxt.TabIndex = 5;
            // 
            // sendAnnouncBtn
            // 
            sendAnnouncBtn.Enabled = false;
            sendAnnouncBtn.Location = new Point(509, 67);
            sendAnnouncBtn.Name = "sendAnnouncBtn";
            sendAnnouncBtn.Size = new Size(170, 23);
            sendAnnouncBtn.TabIndex = 4;
            sendAnnouncBtn.Text = "Send Announcement";
            sendAnnouncBtn.UseVisualStyleBackColor = true;
            sendAnnouncBtn.Click += sendAnnouncBtn_Click;
            // 
            // listBox1
            // 
            listBox1.FormattingEnabled = true;
            listBox1.ItemHeight = 15;
            listBox1.Location = new Point(112, 96);
            listBox1.Name = "listBox1";
            listBox1.Size = new Size(567, 259);
            listBox1.TabIndex = 6;
            // 
            // refreshBtn
            // 
            refreshBtn.Enabled = false;
            refreshBtn.Location = new Point(307, 361);
            refreshBtn.Name = "refreshBtn";
            refreshBtn.Size = new Size(187, 32);
            refreshBtn.TabIndex = 7;
            refreshBtn.Text = "Refresh";
            refreshBtn.UseVisualStyleBackColor = true;
            refreshBtn.Click += refreshBtn_Click;
            // 
            // statusStrip
            // 
            statusStrip.Location = new Point(0, 428);
            statusStrip.Name = "statusStrip";
            statusStrip.Size = new Size(800, 22);
            statusStrip.TabIndex = 8;
            statusStrip.Text = "statusStrip1";
            // 
            // timer
            // 
            timer.Tick += timer_Tick;
            // 
            // playersLst
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(statusStrip);
            Controls.Add(refreshBtn);
            Controls.Add(listBox1);
            Controls.Add(announcTxt);
            Controls.Add(sendAnnouncBtn);
            Controls.Add(nameTxt);
            Controls.Add(sendNameBtn);
            Controls.Add(reqCardBtn);
            Controls.Add(connectBtn);
            Name = "playersLst";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button connectBtn;
        private Button reqCardBtn;
        private Button sendNameBtn;
        private TextBox nameTxt;
        private TextBox announcTxt;
        private Button sendAnnouncBtn;
        private ListBox listBox1;
        private Button refreshBtn;
        private StatusStrip statusStrip;
        private System.Windows.Forms.Timer timer;
    }
}
