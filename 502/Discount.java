import java.util.Scanner;

public class Discount {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String name = input.nextLine();
        double price = input.nextDouble();
        int quantity = input.nextInt();

        double total = price * quantity;
        double discount = 0;

        System.out.printf("%d x %s @ $%.2f\n", quantity, name, price);

        if (quantity >= 10) {
            discount = total * 0.1;
            System.out.printf("Subtotal: $%.2f\n", total);
            System.out.printf("-10%% Discount: $%.2f\n", discount);
        };

        System.out.printf("Total: $%.2f\n", total - discount);
        
        input.close();
    }
}