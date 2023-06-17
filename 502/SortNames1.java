import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;

public class SortNames1
{
    public static void main (String[] args) {
        Scanner keyboard = new Scanner(System.in);
        int length = Integer.parseInt(keyboard.nextLine());
        List<String> names = new ArrayList<String>();
        for (int i = 0; i < length; i++) {
            names.add(keyboard.nextLine());
        }
        Collections.sort(names);
        for (int i = 0; i < length; i++) {
            System.out.println(names.get(i));
        }
        keyboard.close();
    }
}