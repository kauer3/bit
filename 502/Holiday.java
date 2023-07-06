import java.util.*;
import java.io.*;

public class Holiday
{
    public static void main(String[] args) throws IOException {
        HashMap<String, Integer> travelList = new HashMap<String, Integer>();

        File travelListFile = new File("travel.txt");
        Scanner travelListScanner = new Scanner(travelListFile);

        while (travelListScanner.hasNextLine()) {
            String travelListLine = travelListScanner.nextLine();
            String[] travelListLineSplit = travelListLine.split(",");
            travelList.put(travelListLineSplit[0], Integer.parseInt(travelListLineSplit[1]));
        }

        travelListScanner.close();

        Scanner kb = new Scanner(System.in);
        int maxDistance = kb.nextInt();
        String input = kb.next();
        ArrayList<String> outputs = new ArrayList<String>();

        while (!input.equals("#")) {
            Integer totalDistance = 0;
            String[] journeys = input.split(",");
            for (int i = 0; i < journeys.length; i++) {
                totalDistance += travelList.get(journeys[i]);
            }
            if (totalDistance <= maxDistance) {
                outputs.add(input + " " + totalDistance + "km");
            }
            input = kb.next();
        }

        kb.close();

        for (int i = 0; i < outputs.size(); i++) {
            System.out.println(outputs.get(i));
        }
    }
}