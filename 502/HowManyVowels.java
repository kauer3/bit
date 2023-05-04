import java.util.Scanner;

public class HowManyVowels {
    public static void main(String[] args) {
        String vowels = "aeiou";
        Scanner input = new Scanner(System.in);
        String word = input.nextLine();
        while (!word.equals("#")) {
            int count = 0;
            for (int i = 0; i < word.length(); i++) {
                if (vowels.indexOf(word.charAt(i)) != -1) {
                    count++;
                }
            }
            System.out.println(count);
            word = input.nextLine();
        }
        input.close();
    }
}