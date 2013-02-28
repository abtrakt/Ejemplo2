
import java.util.ArrayList;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Oleksiy Lesyshyn
 */
public class DataBase {

    public static ArrayList<ArrayList> dataBase = new ArrayList();
    ArrayList<String> user1 = new ArrayList(5);

    public void Main(String args[]) {

        user1.add("abtrakt");
        user1.add("pass");
        user1.add("Oleksiy");
        user1.add("Lesyshyn");
        user1.add("abtrakt@gmail.com");

        dataBase.add(user1);

    }

    public String concatena(String nombre, String email) {

        
        return nombre + " -> " + email;
    }
}
