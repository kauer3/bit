using System.Net.Sockets;
using ServerPlayingCards;
using PlayingCardDTOLib;
using Newtonsoft.Json;

namespace ReadingWritingForm
{
    public partial class playersLst : Form
    {
        TcpClient client;
        NetworkStream stream;
        BinaryReader reader;
        BinaryWriter writer;

        public playersLst()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void reqCardBtn_Click(object sender, EventArgs e)
        {
            GameAction cardRequest = new GameAction(GameActionType.CardRequest);
            string json = JsonConvert.SerializeObject(cardRequest);
            writer.Write(json);
            string response = reader.ReadString();
            PlayingCard card = JsonConvert.DeserializeObject<PlayingCard>(response);
            Console.WriteLine(card);
            //return card;
        }

        private void connectBtn_Click(object sender, EventArgs e)
        {
            try
            {
                ConnectToServer();
                connectBtn.Enabled = false;
                reqCardBtn.Enabled = true;
                refreshBtn.Enabled = true;
                sendNameBtn.Enabled = true;
                sendAnnouncBtn.Enabled = true;
                timer.Enabled = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                MessageBox.Show("Could not connect to server.");
            }
        }

        private void ConnectToServer()
        {
            client = new TcpClient("127.0.0.1", 2050);
            stream = client.GetStream();
            reader = new BinaryReader(stream);
            writer = new BinaryWriter(stream);
        }

        private void onFormClosing(object sender, FormClosingEventArgs e)
        {
            if (client != null)
            {
                QuitGame();
            }
        }

        private void QuitGame()
        {
            GameAction quit = new GameAction(GameActionType.Quit);
            string json = JsonConvert.SerializeObject(quit);
            writer.Write(json);
            stream.Close();
            client.Close();
        }

        private void sendNameBtn_Click(object sender, EventArgs e)
        {
            PlayerInfo player = new PlayerInfo(nameTxt.Text);
            string json = JsonConvert.SerializeObject(player);
            writer.Write(json);
            //sendNameBtn.Enabled = false;
        }

        private void sendAnnouncBtn_Click(object sender, EventArgs e)
        {
            Announcement announcement = new Announcement(announcTxt.Text);
            string json = JsonConvert.SerializeObject(announcement);
            writer.Write(json);
        }

        private void refreshBtn_Click(object sender, EventArgs e)
        {
            PlayerInfo player = new PlayerInfo();
            string json = JsonConvert.SerializeObject(player);
            writer.Write(json);
            string response = reader.ReadString();
            List<PlayerInfo> players = JsonConvert.DeserializeObject<List<PlayerInfo>>(response);
            listBox1.Items.Clear();
            foreach (PlayerInfo p in players)
            {
                Console.WriteLine(p);
                listBox1.Items.Add(p);
            }
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            checkForServerMessage();
        }

        private void checkForServerMessage()
        {
            string response = reader.ReadString();
            if (response == null)
            {
                return;
            }
            Announcement announcement = JsonConvert.DeserializeObject<Announcement>(response);
            statusStrip.Items[0].Text = announcement.Message;
        }
    }
}
