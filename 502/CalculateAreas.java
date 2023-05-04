import java.util.Scanner;

public class CalculateAreas
{
    public static void main(String[] args)
    {
        Scanner keyboard = new Scanner(System.in);
        String input = keyboard.nextLine();
        while (input.equals("#")) {
            String[] inputs = input.split(" ");
            printArea(inputs[0], inputs[1]);
            input = keyboard.nextLine();
        }
        keyboard.close();
    }
    public static void printArea(String code, String data)
    {
        System.out.printf("Code %s, Data %s", code, data);
    }
}