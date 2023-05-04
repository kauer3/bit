import java.util.Scanner;

public class PassFailMerit {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int score = 0;
        while (score != -1) {
            score = input.nextInt();
            if (score >= 80) {
                System.out.println("MERIT");
            } else if (score >= 50) {
                System.out.println("PASS");
            } else if (score >= 0) {
                System.out.println("FAIL");
            }
        }
        input.close();
    }
}