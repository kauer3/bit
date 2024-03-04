using PlayingCards;

namespace Card_Dealer
{
    public partial class Form1 : Form
    {
        private Deck deck;
        List<Image> images = new List<Image>();

        const int HAND_SIZE = 13;
        const int CARD_WIDTH = 75;
        const int CARD_HEIGHT = 108;

        Hand firstHand;
        // Image[] secondHand;
        // Image[] thirdHand;
        // Image[] fourthHand;
        PictureBox[] cardImages;

        Image[][] hands;

        public Form1()
        {
            InitializeComponent();

            deck = new Deck();


            // PictureBox pbDeck = PictureBoxDeck;
            // PictureBox pbCard = PictureBoxCard;

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < imageList1.Images.Count - 1; i++)
            {
                images.Add(imageList1.Images[i]);
            }

            deck.AssigImages(images, imageList1.Images[52]);
            deck.Shuffle();

            firstHand = deck.DealHand(HAND_SIZE);
            secondHand = new Image[HAND_SIZE];
            thirdHand = new Image[HAND_SIZE];
            fourthHand = new Image[HAND_SIZE];

            hands = new Image[][] { firstHand, secondHand, thirdHand, fourthHand };
            DisplayHand(firstHand);

            // for (int i = 0; i < HAND_SIZE; i++)
            {
                cardImages[i] = new PictureBox();
                PlayingCard card = deck.DealTopCard();
                //card.IsFaceUp = false;
                cardImages[i].Image = card.GetImage();

                int row = i / HAND_SIZE;
                int col = i % HAND_SIZE;
                cardImages[i].Location = new Point(10 + col * CARD_WIDTH, 10 + row * CARD_HEIGHT);
                cardImages[i].Size = (new Size(CARD_WIDTH, CARD_HEIGHT));
                cardImages[i].SizeMode = PictureBoxSizeMode.StretchImage;

                //hands[hand][i].Click += Card_Click;
                //cardImages[i].Tag = card;
                //Controls.Add(cardImages[i]);
            }
        }

        private void DisplayHand(Image[] hand)
        {
            for (int i = 0; i < HAND_SIZE; i++)
            {
                cardImages[i] = new PictureBox();
                PlayingCard card = deck.DealTopCard();
                card.IsFaceUp = false;
                cardImages[i].Image = card.GetImage();

                int row = i / HAND_SIZE;
                int col = i % HAND_SIZE;
                cardImages[i].Location = new Point(10 + col * CARD_WIDTH, 10 + row * CARD_HEIGHT);
                cardImages[i].Size = (new Size(CARD_WIDTH, CARD_HEIGHT));
                cardImages[i].SizeMode = PictureBoxSizeMode.StretchImage;

                cardImages[i].Tag = card;
                Controls.Add(cardImages[i]);
            }
        }

        private void SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            int hand = int.Parse(cb.Tag.ToString());
            DisplayHand(hands[hand]);
        }
    }
}
