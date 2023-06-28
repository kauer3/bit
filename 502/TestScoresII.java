import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class TestScoresII
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String line = keyboard.nextLine();
        while (!line.equals("#")) {
            ArrayList<Integer> numbers = new ArrayList<>();
            String[] inputArray = line.split(" ");
            for (String input : inputArray) {
                numbers.add(Integer.parseInt(input));
            }
            Collections.sort(numbers);
            numbers.forEach((n) -> System.out.printf("%d ", n));
            System.out.println();
            line = keyboard.nextLine();
        }
        keyboard.close();
    }
}