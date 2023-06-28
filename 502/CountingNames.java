import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class CountingNames {
    public static void main(String[] args) throws IOException {
        FileReader fileReader = new FileReader("names.txt");
        BufferedReader reader = new BufferedReader(fileReader);
        ArrayList<String> names = new ArrayList<>();
        String line;
        while ((line = reader.readLine()) != null) {
            names.add(line);
        }
        reader.close();
        BufferedReader reader2 = new BufferedReader(new InputStreamReader(System.in));
        String name;
        while (!(name = reader2.readLine()).equals("#")) {
            int count = 0;
            for (int i = 0; i < names.size(); i++) {
                if (names.get(i).equals(name)) {
                    count++;
                }
            }
            System.out.printf("%s: %d\n", name, count);
        }
        reader2.close();
    }
}