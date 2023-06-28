import java.util.*;
import java.io.*;

public class PhoneBill
{
    public static void main (String[] args) throws IOException {
        HashMap<String,String> phoneList = new HashMap<String,String>();
        
        File phoneListFile = new File("phonelist.txt");
        Scanner phoneListScanner = new Scanner(phoneListFile);
        
        while (phoneListScanner.hasNextLine()) {
            String phoneListLine = phoneListScanner.nextLine();
            Scanner lineScanner = new Scanner(phoneListLine);
            String key = lineScanner.next();
            String value = lineScanner.nextLine();
            phoneList.put(key, value);
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            if (phoneList.get(input) == null) {
                System.out.printf("%s unknown\n", input);
            } else {
                System.out.printf("%s %s\n", input, phoneList.get(input));
            }
            input = kb.nextLine();
        }
    }
}