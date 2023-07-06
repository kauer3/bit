import java.io.*;
import java.util.*;

public class MorseCodeGenerator {
    public static void main(String[] args) throws IOException {
        HashMap<String, String> morseCode = new HashMap<String, String>();
        Scanner file = new Scanner(new File("morse.txt"));
        while (file.hasNext()) {
            String letter = file.next();
            String code = file.next();
            morseCode.put(letter, code);
        }
        file.close();

        Scanner input = new Scanner(System.in);
        String line = input.nextLine();
        while (!line.equals("#")) {
            String[] words = line.toUpperCase().split(" ");
            for (String word : words) {
                for (int i = 0; i < word.length(); i++) {
                    String letter = word.substring(i, i + 1);
                    System.out.print(morseCode.get(letter) + " ");
                }
                System.out.print("   ");
            }
            System.out.println();
            line = input.nextLine();
        }
        input.close();
    }
}