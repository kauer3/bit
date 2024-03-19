using System.IO;
using iText.Kernel.Pdf;
using iText.Kernel.Font;
using iText.IO.Font.Constants;
using iText.Kernel.Geom;
using iText.Kernel.Colors;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using iText.IO.Image;

using Image = System.Drawing.Image;

namespace PDF_Creation
{
    public partial class Form1 : Form
    {
        StatusStrip statusStrip;

        string loremIpsum1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
            "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. " +
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. " +
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " +
            "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        string loremIpsum2 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
            "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. " +
            "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." +
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. " +
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ";
        string loremIpsum3 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
            "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. " +
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " +
            "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." +
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ";
        List<string> paragraphs;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            statusStrip = new StatusStrip();
            this.Controls.Add(statusStrip);
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

            PdfWriter writer = new PdfWriter("test.pdf", properties);
            PdfDocument pdf = new PdfDocument(writer);

            PdfDocumentInfo info = pdf.GetDocumentInfo();
            info.SetAuthor("Kauê");
            info.SetSubject("Beginning PDF creation");
            info.SetTitle("PDF creation test document");

            Document document = new Document(pdf, PageSize.A4);

            statusStrip.Items.Add(new ToolStripStatusLabel("Document Created Successfully"));

            statusTimer.Enabled = true;
            statusTimer.Interval = 3000;
            statusTimer.Start();

            PdfFont mainFont = PdfFontFactory.CreateFont(StandardFonts.TIMES_ROMAN);
            PdfFont boldFont = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);

            Paragraph title = new Paragraph("PDF creation test document").SetFont(boldFont).SetFontSize(24).SetTextAlignment(TextAlignment.CENTER);
            document.Add(title);

            AddParagraphs(document, mainFont, boldFont);

            Image initialImage = System.Drawing.Image.FromFile("back-blue-75-1.png");
            ImageData data = ImageDataFactory.Create(ConvertToBytes(initialImage));

            iText.Layout.Element.Image imageToSave = new iText.Layout.Element.Image(data);

            document.Add(imageToSave);

            document.Close();
        }

        private void AddParagraphs(Document document,PdfFont mainFont, PdfFont boldFont)
        {
            paragraphs = new List<string>();
            paragraphs.Add(loremIpsum1);
            paragraphs.Add(loremIpsum2);
            paragraphs.Add(loremIpsum3);

            foreach (string text in paragraphs)
            {
                Paragraph paragraph = new Paragraph(text)
                    .SetFont(mainFont)
                    .SetFontSize(8)
                    .SetTextAlignment(TextAlignment.JUSTIFIED)
                    .SetMarginLeft(200)
                    .SetMarginRight(200);
                document.Add(paragraph);
            }
        }   

        private void StatusTimer_Tick(object sender, EventArgs e)
        {
            statusStrip.Items.Clear();
            statusTimer.Stop();
        }

        private byte[] ConvertToBytes(System.Drawing.Image image)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                image.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                return ms.ToArray();
            }
        }
    }
}
