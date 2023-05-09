import java.util.Scanner;

public class TestScores2
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            String[] inputArray = input.split(",");
            int totalScore = 0;
            for (int i = 2; i < inputArray.length; i++) {
                totalScore += Integer.parseInt(inputArray[i]);
            }
            System.out.printf("%s %s %d\n", inputArray[1], inputArray[0], totalScore);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}