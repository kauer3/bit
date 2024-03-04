using PlayingCards;
using System.Drawing;

namespace PlayingCards
{
    public class PlayingCard : IComparable<PlayingCard>
    {

        public CardRank Rank;
        CardSuit Suit;
        int Points, ID;
        public Image? FrontImage, BackImage;
        public bool IsFaceUp;
        string Name, Abbrev;

        public PlayingCard(CardRank rank, CardSuit suit)
        {
            Points = 0;
            Image FrontImage = null;
            Image BackImage = null;
            ID = (int)Suit * 13 + (int)Rank;
            Name = Rank.ToString() + " of " + Suit.ToString();
            Abbrev = GetDefaultAbbrev(rank, suit);
            IsFaceUp = true;
            Rank = rank;
            Suit = suit;
        }

        public string GetDefaultAbbrev(CardRank Rank, CardSuit Suit)
        {
            char suitAbbrev = Suit.ToString()[0];
            char rankAbbrev;
            int rankIndex = (int)Rank;

            if (rankIndex > 0 && rankIndex < 9)
            {
                rankAbbrev = ((int)Rank + 1).ToString()[0];
            }
            else
            {
                rankAbbrev = Rank.ToString()[0];
            }

            /*
            switch(Rank)
            {
                case CardRank.Two:
                case CardRank.Three:
                case CardRank.Four:
                case CardRank.Five:
                case CardRank.Six:
                case CardRank.Seven:
                case CardRank.Eight:
                case CardRank.Nine:
                    rankAbbrev = ((int)Rank + 1).ToString()[0];
                    break;
                case CardRank.Ten:
                case CardRank.Jack:
                case CardRank.Queen:
                case CardRank.King:
                case CardRank.Ace:
                    rankAbbrev = Rank.ToString()[0];
                    break;
            }
            */


            return rankAbbrev.ToString() + suitAbbrev.ToString();
        }

        public void Flip()
        {
            IsFaceUp = !IsFaceUp;
        }

        public Image? GetImage()
        {
            if (IsFaceUp)
            {
                return FrontImage;
            }
            else
            {
                return BackImage;
            }
        }

        public override string ToString()
        {
            return Name;
        }


        public int CompareTo(PlayingCard? other)
        {
            if (other == null)
            {
                return 1;
            }
            else if (this.Suit == other.Suit)
            {
                return ((int)this.Rank).CompareTo((int)other.Rank);
            }
            else
            {
                return ((int)this.Suit).CompareTo((int)other.Suit);
            }
        }
    }
}
