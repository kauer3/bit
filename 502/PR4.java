import java.util.*;
import java.io.*;

public class PR4
{
    public static void main (String[] args) throws IOException
    {
        HashMap<String,Double> atomicWeight = new HashMap<String,Double>();
        
        File atomicWeightFile = new File("atomic.txt");
        Scanner atomsWeight = new Scanner(atomicWeightFile);
        
        while (atomsWeight.hasNextLine())
        {
            String key = atomsWeight.next();
            Double value = atomsWeight.nextDouble();
            atomicWeight.put(key, value);
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#"))
        {
            Scanner inputLine = new Scanner(input);
            Double totalWeight = 0.0;
            
            while (inputLine.hasNext())
            {
                String atom = inputLine.next();
                int quantity = inputLine.nextInt();
                Double weight = atomicWeight.get(atom);
                
                totalWeight += quantity * weight;
            }

            System.out.printf("%.3f\n", totalWeight);
            input = kb.nextLine();
        }
    }
}