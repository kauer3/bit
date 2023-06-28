import java.util.ArrayList;
import java.util.Scanner;

public class SortNamesII {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<String> names = new ArrayList<>();
        String name;
        while (!(name = sc.nextLine()).equals("#")) {
            names.add(name);
        }
        for (int i = 0; i < names.size(); i++) {
            String min = names.get(i);
            int minIndex = i;
            for (int j = i + 1; j < names.size(); j++) {
                if (names.get(j).compareTo(min) < 0) {
                    min = names.get(j);
                    minIndex = j;
                }
            }
            String temp = names.get(i);
            names.set(i, min);
            names.set(minIndex, temp);
        }
        for (int i = 0; i < names.size(); i++) {
            System.out.println(names.get(i));
        }
    }
}