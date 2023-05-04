import java.util.Scanner;

public class CountTheStarsII
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            int count = 0;
            for (int i = 0; i < input.length(); i++) {
                if (input.charAt(i) == '!') {
                    break;
                } else if (input.charAt(i) == '*') {
                    count++;
                }
            }
            System.out.println(count);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}