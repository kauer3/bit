using iText.IO.Font.Constants;
using iText.IO.Image;
using iText.Kernel.Font;
using iText.Kernel.Geom;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Newtonsoft.Json;
using PlayingCards;
using System.Reflection;
using System.Runtime.Serialization.Formatters.Binary;
using System.Windows.Forms;

namespace Card_Dealer
{
    public partial class Form1 : Form
    {
        private Deck deck;
        List<System.Drawing.Image> images = new List<System.Drawing.Image>();

        const int HAND_SIZE = 13;
        const int CARD_WIDTH = 75;
        const int CARD_HEIGHT = 108;

        PictureBox[] cardImages;
        ListOfHands hands;
        int selectedHand = 0;

        StatusStrip statusStrip;

        public Form1()
        {
            InitializeComponent();

            deck = new Deck();
            cardImages = new PictureBox[52];
            statusStrip = new StatusStrip();
            this.Controls.Add(statusStrip);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            HandleImages();
            DealCards();

            comboBox1.SelectedIndex = 0;
        }

        private void DealButton_Click(Object sender, EventArgs e)
        {
            deck = new Deck();
            images.Clear();
            HandleImages();
            DealCards();
            GetSelectedHand(selectedHand);
        }

        private void SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            selectedHand = cb.SelectedIndex;
            GetSelectedHand(selectedHand);
        }

        private void GetSelectedHand(int hand)
        {
            switch (hand)
            {
                case 0:
                    DisplayHand(hands.firstHand);
                    break;
                case 1:
                    DisplayHand(hands.secondHand);
                    break;
                case 2:
                    DisplayHand(hands.thirdHand);
                    break;
                case 3:
                    DisplayHand(hands.fourthHand);
                    break;
            }
        }

        private void DisplayHand(List<PlayingCard> hand)
        {
            for (int i = 0; i < hand.Count; i++)
            {
                cardImages[i].Image = hand[i].GetImage();

                int row = i / HAND_SIZE;
                int col = i % HAND_SIZE;
                cardImages[i].Location = new System.Drawing.Point(10 + col * CARD_WIDTH, 45 + row * CARD_HEIGHT);
                cardImages[i].Size = (new Size(CARD_WIDTH, CARD_HEIGHT));
                cardImages[i].SizeMode = PictureBoxSizeMode.StretchImage;

                Controls.Add(cardImages[i]);
            }
        }

        private void HandleImages()
        {
            for (int i = 0; i < 52 - 1; i++)
            {
                if (cardImages[i] != null)
                {
                    cardImages[i].Dispose();
                }
                cardImages[i] = new PictureBox();
            }

            for (int i = 0; i < imageList1.Images.Count - 1; i++)
            {
                images.Add(imageList1.Images[i]);
            }

            deck.AssigImages(images, imageList1.Images[52]);
        }

        private void DealCards()
        {
            deck.Shuffle();
            hands = new ListOfHands(DealHand(), DealHand(), DealHand(), DealHand());
        }

        private List<PlayingCard> DealHand()
        {
            PlayingCard? card;
            List<PlayingCard> hand = new List<PlayingCard>();
            
            for (int i = 0; i < HAND_SIZE; i++)
            {
                card = deck.DealTopCard();
                hand.Add(card);
            }

            return hand;
        }

        private void SaveButton_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.ShowDialog();

            if (saveFileDialog.FileName != "")
            {
#pragma warning disable SYSLIB0011 // Type or member is obsolete
                BinaryFormatter formatter = new BinaryFormatter();
#pragma warning restore SYSLIB0011 // Type or member is obsolete

                using (FileStream stream = new FileStream(saveFileDialog.FileName, FileMode.Create))
                {
                    formatter.Serialize(stream, hands);
                }
            }
        }

        private void LoadButton_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.ShowDialog();

            if (openFileDialog.FileName != "")
            {
#pragma warning disable SYSLIB0011 // Type or member is obsolete
                BinaryFormatter formatter = new BinaryFormatter();
#pragma warning restore SYSLIB0011 // Type or member is obsolete
                using (FileStream stream = new FileStream(openFileDialog.FileName, FileMode.Open))
                {
                    hands = (ListOfHands)formatter.Deserialize(stream);

                    if (selectedHand == 0)
                    {
                        DisplayHand(hands.firstHand);
                    }
                    else
                    {
                        comboBox1.SelectedIndex = 0;
                    }
                }
            }
        }

        private void PrintButton_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.ShowDialog();

            if (saveFileDialog.FileName != "")
            {
                WriterProperties properties = new WriterProperties();
                properties.AddXmpMetadata();
                properties.SetPdfVersion(PdfVersion.PDF_2_0);

                PdfWriter writer = new PdfWriter(saveFileDialog.FileName, properties);
                PdfDocument pdf = new PdfDocument(writer);

                PdfDocumentInfo info = pdf.GetDocumentInfo();
                info.SetAuthor("Kauê");
                info.SetSubject("Card Hands");
                info.SetTitle("Card Dealer");

                Document document = new Document(pdf, PageSize.A4);

                statusStrip.Items.Add(new ToolStripStatusLabel("Document Created Successfully"));

                statusTimer.Enabled = true;
                statusTimer.Interval = 3000;
                statusTimer.Start();

                PdfFont mainFont = PdfFontFactory.CreateFont(StandardFonts.TIMES_ROMAN);
                PdfFont boldFont = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);

                Paragraph title = new Paragraph("PDF creation test document").SetFont(boldFont).SetFontSize(24).SetTextAlignment(TextAlignment.CENTER);
                document.Add(title);


                var propsList = typeof(ListOfHands).GetProperties();

                foreach (var propertyName in propsList)
                {
                    List<PlayingCard> hand = (List<PlayingCard>)propertyName.GetValue(hands);

                    foreach (PlayingCard card in hand)
                    {
                        System.Drawing.Image image = card.GetImage();
                        ImageData imageData = ImageDataFactory.Create(ConvertToBytes(image));
                        iText.Layout.Element.Image imageToSave = new iText.Layout.Element.Image(imageData);

                        document.Add(imageToSave);
                    }
                }
                document.Close();
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

        [Serializable]
        class ListOfHands
        {
            public List<PlayingCard> firstHand { get; set; }
            public List<PlayingCard> secondHand { get; set; }
            public List<PlayingCard> thirdHand { get; set; }
            public List<PlayingCard> fourthHand { get; set; }

            public ListOfHands(List<PlayingCard> firstHand, List<PlayingCard> secondHand, List<PlayingCard> thirdHand, List<PlayingCard> fourthHand)
            {
                this.firstHand = firstHand;
                this.secondHand = secondHand;
                this.thirdHand = thirdHand;
                this.fourthHand = fourthHand;
            }
        }
    }
}
