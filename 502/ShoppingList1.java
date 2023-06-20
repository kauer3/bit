
/**
 * 
 * 
 * 
 * 
 * 
 *  
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */

import java.util.*;
import java.io.*;

public class ShoppingList1
{
    public static void main(String[] args) throws IOException
    {
        // create item-price map from file named pricelist.txt
        HashMap<String,Double> map = populateHashMap("pricelist.txt");
        
        Scanner kb = new Scanner(System.in);
        String line = kb.nextLine();
        while (!line.equals("#"))
        {
            printResult(line, map);
            
            line = kb.nextLine();
        }
    }
    
    public static HashMap<String,Double> populateHashMap(String filename) throws IOException
    {
        HashMap<String,Double> map = new HashMap<String,Double>();
        
        File file = new File (filename);
        Scanner fileScanner = new Scanner(file);
        while (fileScanner.hasNextLine())
        {
            String line = fileScanner.nextLine();
            
            Scanner lineScanner = new Scanner(line);
            
            String name = lineScanner.next();
            
            double price = lineScanner.nextDouble();
            
            map.put(name, price);
        }
        
        return map;
    }
    
    public static void printResult(String line, HashMap<String,Double> map)
    {
        Scanner lineScanner = new Scanner(line);
        String name = lineScanner.next();
        int quantity = lineScanner.nextInt();
        //System.out.print(name, quantity);
        
        double price = 0.0;
        if (map.containsKey(name))
        {
            price = map.get(name);
            double totalPrice = price * quantity;      
            System.out.printf("%s %d@$%.2f $%.2f\n", name, quantity, price, totalPrice);
        } else {
            System.out.printf("%s Not available\n", name);
        }
    }
}