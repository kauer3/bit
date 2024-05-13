using System.Net;
using System.Net.Sockets;
using System.IO;
using ServerPlayingCards;
using System.Text.Json;
using Newtonsoft.Json;
using System.Security.Cryptography.X509Certificates;

public partial class Exercise2
{
    static void Main(string[] args)
    {
    }

    public static PlayingCard GetCard()
    {
        TcpClient client = new TcpClient("127.0.0.1", 2049);
        NetworkStream stream = client.GetStream();
        BinaryReader reader = new BinaryReader(stream);
        string json = reader.ReadString();
        PlayingCard card = JsonConvert.DeserializeObject<PlayingCard>(json);
        Console.WriteLine(card.ToString());
        reader.Close();
        return card;
    }
}
