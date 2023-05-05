import java.util.Scanner;

public class SumsOfLinesOfNumbers
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            Scanner line = new Scanner(input);
            int sum = 0;
            while (line.hasNextInt()) {
                sum += line.nextInt();
            }
            System.out.println(sum);
            input = keyboard.nextLine();
            line.close();
        }
        keyboard.close();
    }
}
 