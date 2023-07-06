import java.util.*;
import java.io.*;

public class CSVFiles {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(System.in);
        String line = input.nextLine();
        while (!line.equals("#")) {
            System.out.println(line.replaceAll(",(?=([^\"']*[\"'][^\"']*[\"'])*[^\"']*$)", ";"));
            line = input.nextLine();
        }
        input.close();
    }
}