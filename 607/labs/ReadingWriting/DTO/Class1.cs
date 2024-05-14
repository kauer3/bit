namespace PlayingCardDTOLib
{
    public enum GameActionType { NoAction, CardRequest, GetPlayerList, Quit }
    public abstract class DTO
    {
        public abstract string Type { get; }
    }
    public class PlayerInfo : DTO
    {
        string name;
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        public override string Type => nameof(PlayerInfo);
        public PlayerInfo()
        {
            this.Name = "unknown";
        }
        public PlayerInfo(string name)
        {
            this.Name = name;
        }
        public override string ToString()
        {
            return this.Name;
        }
    }
    public class Announcement : DTO
    {
        public override string Type => nameof(Announcement);
        string message;
        public string Message
        {
            get
            {
                return message;
            }
            set
            {
                message = value;
            }
        }
        public Announcement()
        {
            message = "unknown";
        }
        public Announcement(string message)
        {
            this.Message = message;
        }
        public override string ToString()
        {
            return this.Message;
        }
    }
    public class GameAction : DTO
    {
        public override string Type => nameof(GameAction);
        public GameActionType MyAction { get; set; }
        public GameAction()
        {
            MyAction = GameActionType.NoAction;
        }
        public GameAction(GameActionType myAction)
        {
            MyAction = myAction;
        }
    }
}
