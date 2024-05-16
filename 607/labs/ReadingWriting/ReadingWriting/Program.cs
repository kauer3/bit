using ServerPlayingCards;
using PlayingCardDTOLib;
using System.Net.Sockets;
using Newtonsoft.Json;


class Program
{
    static void Main(string[] args)
    {
        TcpClient client = new TcpClient("127.0.0.1", 2050);

        NetworkStream stream = client.GetStream();
        BinaryReader reader = new BinaryReader(stream);
        BinaryWriter writer = new BinaryWriter(stream);
        GameAction GA = new GameAction(GameActionType.CardRequest);

        string json = JsonConvert.SerializeObject(GA);


        Console.WriteLine(json);

        writer.Write(json);

        string response = reader.ReadString();
        PlayingCard card = JsonConvert.DeserializeObject<PlayingCard>(response);
        Console.WriteLine(card);

    }
}
