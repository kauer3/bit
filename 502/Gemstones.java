import java.util.*;
import java.io.*;

public class Gemstones
{
    public static void main (String[] args) throws IOException {
        HashMap<String,Integer> gemList = new HashMap<String,Integer>();
        
        File gemListFile = new File("gems.txt");
        Scanner gemListScanner = new Scanner(gemListFile);
        String[] gemLine;
        
        while (gemListScanner.hasNextLine()) {
            String gemListLine = gemListScanner.nextLine();
            gemLine = gemListLine.split(":");
            gemList.put(gemLine[0], Integer.parseInt(gemLine[1]));
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            Scanner lineScanner = new Scanner(input);
            int total = 0;
            while (lineScanner.hasNext()) {
                String gem = lineScanner.next();
                int quantity = lineScanner.nextInt();
                total += gemList.get(gem) * quantity;
            }
            System.out.printf("%dgp\n", total);
            input = kb.nextLine();
        }
    }
}