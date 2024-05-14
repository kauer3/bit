using System.Net.Sockets;
using ServerPlayingCards;
using PlayingCardDTOLib;

namespace ReadingWritingForm
{
    public partial class Form1 : Form
    {
        TcpClient client;
        NetworkStream stream;
        BinaryReader reader;
        BinaryWriter writer;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            client = new TcpClient("127.0.0.1", 2050);
            stream = client.GetStream();
            reader = new BinaryReader(stream);
            writer = new BinaryWriter(stream);
        }

        private PlayingCard RequestCard()
        {
            GameAction cardRequest = new GameAction(GameActionType.CardRequest);
            string json = JsonConvert.SerializeObject(cardRequest);
            writer.Write(json);
            string response = reader.ReadString();
            PlayingCard card = JsonConvert.DeserializeObject<PlayingCard>(response);
            Console.WriteLine(card);
            return card;
        }


        string json = JsonConvert.SerializeObject(cardRequest);


        Console.WriteLine(json);

        writer.Write(json);

        string response = reader.ReadString();
        PlayingCard card = JsonConvert.DeserializeObject<PlayingCard>(response);
        Console.WriteLine(card);
    }
}
