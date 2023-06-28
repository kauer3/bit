import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public class FileProcessing {
    public static void main(String[] args) throws IOException {
        FileReader fileReader = new FileReader("raw.txt");
        BufferedReader reader = new BufferedReader(fileReader);
        String line;
        while ((line = reader.readLine()) != null) {
            String[] lineArray = line.split(" ");
            ArrayList<Integer> scores = new ArrayList<>();
            for (int i = 1; i < lineArray.length; i++) {
                scores.add(Integer.parseInt(lineArray[i]));
            }
            Collections.sort(scores);
            Collections.reverse(scores);
            System.out.printf("%s %d %d %d\n", lineArray[0], scores.get(0), scores.get(1), scores.get(2));
        }
        reader.close();
    }
}