using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace PlayingCards
{
    internal class Hand
    {
        protected List<PlayingCard> cards;

        public Hand()
        {
            cards = new List<PlayingCard>();
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

        public void Sort()
        {
            cards.Sort();
        }
    }
}
