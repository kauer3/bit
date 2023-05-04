import java.util.Scanner;

public class Shopping {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String name = input.nextLine();
        double price = input.nextDouble();
        int quantity = input.nextInt();
        System.out.printf("%d x %s @ $%.2f Total: $%.2f", quantity, name, price, price * quantity);
        input.close();
    }
}