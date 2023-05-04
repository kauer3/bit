import java.util.Scanner;

public class StarCount {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String line = "";
        int count = 0;
        do {
            line = input.nextLine();
            if (!line.equals("#")) {
                for (int i = 0; i < line.length(); i++) {
                    if (line.charAt(i) == '*') {
                        count++;
                    }
                }
                System.out.println(count);
                count = 0;
            }
        } while (!line.equals("#"));
        input.close();
    }
}

