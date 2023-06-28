import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;

public class HorizontalNameSort {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String name = sc.nextLine();
        while (!name.equals("#")) {
            ArrayList<String> names = new ArrayList<>();
            String[] inputArray = name.split(",");
            Collections.addAll(names, inputArray);
            names.sort(null);
            String output = String.join(",", names);
            System.out.println(output);
            name = sc.nextLine();
        }
        sc.close();
    }
}