import java.util.Scanner;

public class SumAndAverage {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number = 0;
        int sum = 0;
        int count = 0;
        while (number != 999) {
            number = input.nextInt();
            if (number != 999) {
                sum += number;
                count++;
            }
        }
        System.out.println("Sum: " + sum);
        System.out.printf("Average: %.2f", (double) sum / count);
        input.close();
    }
}