using PlayingCards;
using System.Timers;
using System.Windows.Forms;

namespace Concentration_Game
{
    public partial class Form1 : Form
    {
        const int NUM_CARDS = 32;
        const int NUM_COLS = 8;
        const int CARD_WIDTH = 75;
        const int CARD_HEIGHT = 108;
        Deck deck;
        PictureBox[] cardImages;
        List<Image> images = new List<Image>();
        Image backImage;
        int score = 0;

        PictureBox firstCardImage;
        PictureBox secondCardImage;
        int stage = 1;

        public Form1()
        {
            InitializeComponent();

            deck = new Deck(
                CardRank.Ace,
                CardRank.Two,
                CardRank.Three,
                CardRank.Four,
                CardRank.Five,
                CardRank.Six,
                CardRank.Seven,
                CardRank.Eight
            );

            cardImages = new PictureBox[NUM_CARDS];
            backImage = imageList1.Images[32];
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            for (int i = 0; i < imageList1.Images.Count - 1; i++)
            {
                images.Add(imageList1.Images[i]);
            }

            deck.AssigImages(images, backImage);

            deck.Shuffle();

            for (int i = 0; i < cardImages.Length; i++)
            {
                cardImages[i] = new PictureBox();
                PlayingCard card = deck.DealTopCard();
                card.IsFaceUp = false;
                cardImages[i].Image = card.GetImage();

                int row = i / NUM_COLS;
                int col = i % NUM_COLS;
                cardImages[i].Location = new Point(10 + col * CARD_WIDTH, 10 + row * CARD_HEIGHT);
                cardImages[i].Size = (new Size(CARD_WIDTH, CARD_HEIGHT));
                cardImages[i].SizeMode = PictureBoxSizeMode.StretchImage;

                cardImages[i].Click += Card_Click;
                cardImages[i].Tag = card;
                Controls.Add(cardImages[i]);
            }
        }

        private void Card_Click(object? sender, EventArgs e)
        {
            PictureBox box = sender as PictureBox;

            if (timer.Enabled || (stage == 2 && firstCardImage == box))
            {
                return;
            }

            PlayingCard card = box.Tag as PlayingCard;
            card.Flip();

            if (stage == 1)
            {
                firstCardImage = box;
                stage = 2;
            }
            else
            {
                secondCardImage = box;
                stage = 1;
                timer.Interval = 1000;
                timer.Start();
            }

            box.Image = card.GetImage();
        }

        private void Timer_Tick(object? sender, EventArgs e)
        {
            PlayingCard firstCard = firstCardImage.Tag as PlayingCard;
            PlayingCard secondCard = secondCardImage.Tag as PlayingCard;
            timer.Stop();

            if (firstCard.Rank == secondCard.Rank)
            {
                firstCardImage.Visible = false;
                secondCardImage.Visible = false;
                score++;
                this.Text = "Concentration Game - Score: " + score;
            }
            else
            {
                firstCard.Flip();
                secondCard.Flip();
                firstCardImage.Image = backImage;
                secondCardImage.Image = backImage;
            }
        }
    }
}
