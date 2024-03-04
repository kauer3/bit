using PlayingCards;

namespace CardsForm_Lab2
{
    public partial class Form1 : Form
    {
        private Deck deck;
        List<Image> images = new List<Image>();
        public Form1()
        {


            InitializeComponent();

            deck = new Deck();

            PictureBoxDeck.Image = imageList1.Images[54];

            PictureBox pbDeck = PictureBoxDeck;
            PictureBox pbCard = PictureBoxCard;

            for (int i = 0; i < 52; i++)
            {
                images.Add(imageList1.Images[i]);
            }

            deck.AssigImages(images, pbDeck.Image);
            deck.Shuffle();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (!deck.IsEmpty())
            {
                PlayingCard card = deck.DealTopCard();
                PictureBoxCard.Image = card.GetImage();
            }
        }
    }
}
