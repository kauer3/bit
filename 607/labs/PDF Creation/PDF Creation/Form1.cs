using System.IO;
using iText.Kernel.Pdf;
using iText.Kernel.Font;
using iText.IO.Font.Constants;
using iText.Kernel.Geom;
using iText.Kernel.Colors;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;

namespace PDF_Creation
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void closeButton_Click(object sender, EventArgs e)
        {

        }

        private void CreateReportButton_Click(object sender, EventArgs e)
        {
            CreateDocument();
        }

        private void CreateDocument()
        {
            WriterProperties properties = new WriterProperties();
            properties.AddXmpMetadata();
            properties.SetPdfVersion(PdfVersion.PDF_2_0);

            PdfWriter writer = new PdfWriter("first.pdf", properties);
            PdfDocument pdf = new PdfDocument(writer);

            PdfDocumentInfo info = pdf.GetDocumentInfo();
            info.SetAuthor("my name");
            info.SetSubject("Beginning PDF creation");
            info.SetTitle("My First PDF");

            Document document = new Document(pdf, PageSize.A4);

            Paragraph paragraph = new Paragraph("My First PDF Document");
            document.Add(paragraph);
            document.Close();

            StatusStrip statusStrip = new StatusStrip();
            statusStrip.Items.Add(new ToolStripStatusLabel("Document Created"));

            this.Controls.Add(statusStrip);
        }
    }
}
