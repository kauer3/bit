using System.Net;
using System.Net.Sockets;
using System.IO;

partial class Exercise1
{
    static void Main(string[] args)
    {
        TcpClient client = new TcpClient("127.0.0.1", 2048);
        NetworkStream stream = client.GetStream();
        BinaryReader reader = new BinaryReader(stream);
        string message = reader.ReadString();
        Console.WriteLine(message);
        reader.Close();
    }
}
