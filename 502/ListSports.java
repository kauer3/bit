import java.util.*;
import java.io.*;

public class ListSports {
    public static void main(String[] args) throws IOException {
            File fileObj = new File("sports.txt");
            Scanner reader = new Scanner(fileObj);
            TreeSet<String> sports = new TreeSet<String>();
            while (reader.hasNextLine()) {
                sports.add(reader.nextLine());
            }
            System.out.println(sports);
    }
}