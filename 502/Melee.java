import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;

public class Melee
{
    public static void main (String[] args) throws IOException {
        HashMap<String,Double> weaponList = new HashMap<String,Double>();
        
        File weaponListFile = new File("melee.txt");
        Scanner weaponListScanner = new Scanner(weaponListFile);
        
        while (weaponListScanner.hasNextLine()) {
            String weaponListLine = weaponListScanner.nextLine();
            String[] weaponLine = weaponListLine.split(":");
            weaponList.put(weaponLine[0], Double.parseDouble(weaponLine[1]));
        }
        
        Scanner kb = new Scanner(System.in);
        String input = kb.nextLine();
        
        while (!input.equals("#")) {
            double heroDamage = 0;
            double ogreDamage = 0;
            Scanner lineScanner = new Scanner(input);
            String heroWeapon = lineScanner.next();
            double heroEffectiveness = lineScanner.nextDouble();
            String ogreWeapon = lineScanner.next();
            double ogreEffectiveness = lineScanner.nextDouble();
            heroDamage += weaponList.get(heroWeapon) * heroEffectiveness;
            ogreDamage += weaponList.get(ogreWeapon) * ogreEffectiveness;
            if (heroDamage > ogreDamage) {
                System.out.println("Hero");
            } else if (ogreDamage > heroDamage) {
                System.out.println("Ogre");
            } else {
                System.out.println("Neither");
            }
            input = kb.nextLine();
        }
    }
}