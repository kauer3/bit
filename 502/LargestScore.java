import java.util.Scanner;

public class LargestScore
{
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while(!input.equals("#")) {
            String[] inputs = input.split(" ");
            int score1 = Integer.parseInt(inputs[1]);
            int score2 = Integer.parseInt(inputs[3]);
            if (score1 >= score2) {
                System.out.printf("%s %d %s %d\n", inputs[0], score1, inputs[2], score2);
            } else {
                System.out.printf("%s %d %s %d\n", inputs[2], score2, inputs[0], score1);
            }
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}
