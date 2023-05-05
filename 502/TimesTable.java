import java.util.Scanner;

public class TimesTable {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number = input.nextInt();
        for (int i = 1; i <= 10; i++) {
            System.out.printf("%d times %d is %d\n", i, number, i * number);
        }
        input.close();
    }
}