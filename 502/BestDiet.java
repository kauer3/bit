import java.util.*;
import java.io.*;

public class BestDiet
{
    public static void main (String[] args) throws IOException {
        HashMap<String,Integer> dietList = new HashMap<String,Integer>();
        
        File dietListFile = new File("diet.txt");
        Scanner dietListScanner = new Scanner(dietListFile);
        
        while (dietListScanner.hasNextLine()) {
            String dietListLine = dietListScanner.nextLine();
            String[] dietArray = dietListLine.split("\t");
            dietList.put(dietArray[0], Integer.parseInt(dietArray[1]));
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            String[] foods = input.split(",");
            String[] food1 = foods[0].split(":");
            String[] food2 = foods[1].split(":");

            int food1Quantity = Integer.parseInt(food1[1]);
            int food2Quantity = Integer.parseInt(food2[1]);
            
            int food1Calories = dietList.get(food1[0]) * food1Quantity;
            int food2Calories = dietList.get(food2[0]) * food2Quantity;
            
            if (food1Calories < food2Calories) {
                System.out.printf("%s,%d,%d\n", food1[0], food1Quantity, food1Calories);
            } else if (food2Calories < food1Calories) {
                System.out.printf("%s,%d,%d\n", food2[0], food2Quantity, food2Calories);
            } else {
                System.out.printf("Same Value\n");
            }
            
            input = kb.nextLine();
        }
    }
}