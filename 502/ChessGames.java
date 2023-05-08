import java.util.Scanner;

public class ChessGames
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            int countA = 0;
            int countB = 0;
            for (int i = 0; i < input.length(); i++) {
                if (input.charAt(i) == 'A') {
                    countA++;
                } else if (input.charAt(i) == 'B') {
                    countB++;
                }
            }
            System.out.printf("A %d B %d\n", countA, countB);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}