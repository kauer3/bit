import java.util.Scanner;

public class Greet {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String firstName = input.nextLine();
        String familyName = input.nextLine();
        String location = input.nextLine();
        System.out.println("Hello " + firstName + " " + familyName + " of " + location);
        input.close();
    }
}