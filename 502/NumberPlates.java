import java.util.*;
import java.io.*;

public class NumberPlates
{
    public static void main (String[] args) throws IOException {
        HashMap<String,String> numberPlates = new HashMap<String,String>();
        
        File numberPlatesFile = new File("numberplates.txt");
        Scanner numberPlatesScanner = new Scanner(numberPlatesFile);
        
        while (numberPlatesScanner.hasNextLine()) {
            String numberPlatesLine = numberPlatesScanner.nextLine();
            String[] numberPlatesLineArray = numberPlatesLine.split(":");
            numberPlates.put(numberPlatesLineArray[0], numberPlatesLineArray[1]);
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            if (numberPlates.get(input) == null) {
                System.out.printf("Unregistered Car\n");
            } else {
                System.out.printf("%s\n", numberPlates.get(input));
            }
            input = kb.nextLine();
        }
    }
}