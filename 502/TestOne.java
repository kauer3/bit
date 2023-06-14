
/**
 * author: Kaue Reis de Assis Pereira
 * version: 0.1
 * date: 02/05/2023
 * class: TestOne
 * purpose: receive the name and times of athletes and return it's name, followed by average time and indicate if was qualified.
 * methods:
 *      main: receive the inputs, check if is not a # and call checkResults passing the inputs.
 *      checkResults: receive the string input as a parameter, separate the data from the input, calculate the average time, check if it is less or equal to the qualifying time, and output athlete's first name, surname, average time and if time is less or equal to qualifying time.
 */


import java.util.Scanner;

public class TestOne
{
    public static void main(String[] args)
    {
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        while(!input.equals("#")) {
            checkResults(input);
            input = kb.nextLine();
        }
        kb.close();
    }
    public static void checkResults(String input)
    {
        String[] data = input.split(" ");
        String name = data[0] + " " + data[1];
        double sum = 0;
        String qual = "";
        for (int i = 2; i < 7; i++) {
            sum += Float.valueOf(data[i]).floatValue();
        }
        double average = sum/5;
        if (average <= 9.75) {
            qual = "QUAL";
        }
        System.out.printf("%s %.2f %s\n", name, sum/5, qual);
    }
}
