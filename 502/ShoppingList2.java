import java.util.*;
import java.io.*;

public class ShoppingList2
{
    public static void main (String[] args) throws IOException {
        HashMap<String,Double> priceList = new HashMap<String,Double>();
        
        File priceListFile = new File("pricelist.txt");
        Scanner priceListScanner = new Scanner(priceListFile);
        
        while (priceListScanner.hasNextLine()) {
            String priceListLine = priceListScanner.nextLine();
            Scanner lineScanner = new Scanner(priceListLine);
            String key = lineScanner.next();
            Double value = lineScanner.nextDouble();
            priceList.put(key, value);
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            Scanner inputScanner = new Scanner(input);
            Double price = 0.0;
            
            while (inputScanner.hasNext()) {
                String name = inputScanner.next();
                Integer quantity = inputScanner.nextInt();
                
                if (priceList.get(name) == null) {
                    System.out.printf("%s not available\n", name);
                    break;
                } else {
                    price += priceList.get(name) * quantity;
                }
            }
            
            System.out.printf("$%.2f\n", price);
            input = kb.nextLine();
        }
    }
}
