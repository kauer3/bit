import java.util.Scanner;

public class WordCount {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String line = "";
        int count = 0;
        do {
            line = input.nextLine();
            if (!line.equals("#")) {
                if (line.length() > 0) {
                    for (int i = 0; i < line.length(); i++) {
                        if (line.charAt(i) == ' ') {
                            count++;
                        }
                    }
                    System.out.println(count + 1);
                    count = 0;
                } else {
                    System.out.println(0);
                }
            }
        } while (!line.equals("#"));
        input.close();
    }
}