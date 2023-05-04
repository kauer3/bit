import java.util.Scanner;

public class PassFail {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int score = 0;
        while (score != -1) {
            score = input.nextInt();
            if (score >= 50) {
                System.out.println("PASS");
            } else if (score < 50 && score != -1) {
                System.out.println("FAIL");
            }
        }
        input.close();
    }
}