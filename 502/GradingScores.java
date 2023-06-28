import java.util.ArrayList;
import java.util.Scanner;

public class GradingScores {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Double> marks = new ArrayList<>();
        double mark;
        while ((mark = sc.nextDouble()) != -1) {
            marks.add(mark);
        }
        double sum = 0;
        for (int i = 0; i < marks.size(); i++) {
            sum += marks.get(i);
        }
        double average = sum / marks.size();
        for (int i = 0; i < marks.size(); i++) {
            System.out.printf("%.2f ", marks.get(i));
            if (marks.get(i) < average) {
                System.out.println("BELOW AVERAGE");
            } else if (marks.get(i) > average) {
                System.out.println("ABOVE AVERAGE");
            } else {
                System.out.println("AVERAGE");
            }
        }
        sc.close();
    }
}