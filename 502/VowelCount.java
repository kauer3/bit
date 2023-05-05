import java.util.Scanner;

public class VowelCount
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (!input.equals("#")) {
            int[] vowelCount = new int[5];
            input = input.toLowerCase();
            for (int i = 0; i < input.length(); i++) {
                if (input.charAt(i) == 'a') {
                    vowelCount[0]++;
                } else if (input.charAt(i) == 'e') {
                    vowelCount[1]++;
                } else if (input.charAt(i) == 'i') {
                    vowelCount[2]++;
                } else if (input.charAt(i) == 'o') {
                    vowelCount[3]++;
                } else if (input.charAt(i) == 'u') {
                    vowelCount[4]++;
                }
            }
            System.out.printf("a:%d,e:%d,i:%d,o:%d,u:%d\n", vowelCount[0], vowelCount[1], vowelCount[2], vowelCount[3], vowelCount[4]);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
}
