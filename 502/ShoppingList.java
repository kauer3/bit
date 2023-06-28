
/**
 * Write a description of class ShoppingList here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */

import java.io.*;
import java.util.*;

public class ShoppingList
{
    public static void main(String[] args) throws IOException {
        
        HashMap<String,Double> priceList = new HashMap<String,Double>();
        
        File file = new File("pricelist.txt");
        Scanner fileScanner = new Scanner(file);
        
        while (fileScanner.hasNextLine()) {
            String line = fileScanner.nextLine();
            Scanner lineScanner = new Scanner(line);
            String key = lineScanner.next();
            Double value = lineScanner.nextDouble();
            priceList.put(key, value);
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while(!input.equals("#")) {
            Scanner line = new Scanner(input);
            String name = line.next();
            
            if (priceList.get(name) == null) {
                System.out.printf("%s not available\n", name);
            } else {
                Double price = priceList.get(name);
                int quantity = line.nextInt();
                System.out.printf("%s %d@$%.2f $%.2f\n", name, quantity, price, quantity * price);
            }
            input = kb.nextLine();
        }
    }
}
