import java.util.Scanner;

public class FormalNames {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String name = input.nextLine();
        int index = name.indexOf(",");
        String firstName = name.substring(index + 2);
        String lastName = name.substring(0, index);
        System.out.println(firstName + " " + lastName);
        input.close();
    }
}