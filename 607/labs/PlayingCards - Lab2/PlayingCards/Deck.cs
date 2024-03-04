using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace PlayingCards
{
    public class Deck
    {
        private readonly List<PlayingCard> cards;
        public static Random rnd = new Random();

        public Deck()
        {
            cards = new List<PlayingCard>();
            foreach (CardSuit suit in Enum.GetValues(typeof(CardSuit)))
            {
                foreach (CardRank rank in Enum.GetValues(typeof(CardRank)))
                {
                    cards.Add(new PlayingCard(rank, suit));
                }
            }
        }

        public Deck(params CardRank[] ranks)
        {
            cards = new List<PlayingCard>();
            foreach (CardSuit suit in Enum.GetValues(typeof(CardSuit)))
            {
                foreach (CardRank rank in ranks)
                {
                    cards.Add(new PlayingCard(rank, suit));
                }
            }
        }

        public void Shuffle()
        {
            for (int i = cards.Count - 1; i > 0; i--)
            {
                int pos = rnd.Next(i + 1);
                PlayingCard tmp = cards[i];
                cards[i] = cards[pos];
                cards[pos] = tmp;
            }
        }

        public bool IsEmpty()
        {
            return cards.Count == 0;
        }

        public PlayingCard? DealTopCard()
        {
            if (IsEmpty())
            {
                return null;
            }
            else
            {
                PlayingCard card = cards[0];
                for (int i = 1; i < cards.Count; i++)
                {
                    cards[i - 1] = cards[i];
                }
                cards.RemoveAt(cards.Count - 1);
                return card;
            }
        }

        public void AssigImages(List<Image> faces, Image back)
        {
            if (faces.Count == cards.Count)
            {
                for (int i = 0; i < faces.Count; i++)
                {
                    cards[i].FrontImage = faces[i];
                    cards[i].BackImage = back;
                }
            }
            else
            {
                throw new Exception("Cardlist size does not match deck");
            }
        }
    }
}
