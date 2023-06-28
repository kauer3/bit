import java.util.ArrayList;
import java.util.Scanner;

public class SortNumbers {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> numbers = new ArrayList<>();
        int number;
        while ((number = sc.nextInt()) != -1) {
            numbers.add(number);
        }
        for (int i = 0; i < numbers.size(); i++) {
            int min = numbers.get(i);
            int minIndex = i;
            for (int j = i + 1; j < numbers.size(); j++) {
                if (numbers.get(j) < min) {
                    min = numbers.get(j);
                    minIndex = j;
                }
            }
            int temp = numbers.get(i);
            numbers.set(i, min);
            numbers.set(minIndex, temp);
        }
        for (int i = 0; i < numbers.size(); i++) {
            System.out.println(numbers.get(i));
        }
        sc.close();
    }
}