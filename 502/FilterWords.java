import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class FilterWords {

    public static void main(String[] args) throws IOException {
        Map<String, String> words = new HashMap<>();
        for (int i = 0; i < args.length; i++) {
            String[] pair = args[i].split(",");
            words.put(pair[0], pair[1]);
        }

        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line;
        while ((line = reader.readLine()) != null) {
            if (line.equals("#")) {
                break;
            }
            String[] wordsInLine = line.split(" ");
            for (int i = 0; i < wordsInLine.length; i++) {
                if (words.containsKey(wordsInLine[i])) {
                    wordsInLine[i] = words.get(wordsInLine[i]);
                }
            }
            System.out.println(String.join(" ", wordsInLine));
        }
    }
}