import java.util.Scanner;

public class MinAndMaxNumbers
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            String[] numbers = input.split(" ");
            int max = Integer.parseInt(numbers[0]);
            int min = max;

            for (int i = 1; i < numbers.length; i++) {
                int num = Integer.parseInt(numbers[i]);
                if (num > max) {
                    max = num;
                } else if (num < min) {
                    min = num;
                }
            }
            System.out.printf("Min: %d Max: %d\n", min, max);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}