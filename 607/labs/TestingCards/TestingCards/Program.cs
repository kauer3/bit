using System.Drawing;
using PlayingCards;

namespace TestingCards
{
    class Program
    {
        static void Main(string[] args)
        {
            Deck deck = new Deck();
            for (int i = 0; i < 52; i++)
            {
                PlayingCard? card = deck.DealTopCard();
                System.Console.WriteLine(card);
            }
        }
    }
}
