import java.util.Scanner;

public class SumsOfLinesOfValidNumbers
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            Scanner line = new Scanner(input);
            int sum = 0;
            while (line.hasNext()) {
                if (line.hasNextInt()) {
                    sum += line.nextInt();
                } else {
                    line.next();
                }
            }
            System.out.println(sum);
            input = keyboard.nextLine();
            line.close();
        }
        keyboard.close();
    }
}
 