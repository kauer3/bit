using ServerPlayingCards;

namespace Exercise3
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

        private void button1_Click(object sender, EventArgs e)
        {
            PlayingCard card = Exercise2.GetCard();
            cardPB.Image = card.GetImage();
        }
    }
}
