import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        String[] data = new String[5];
        data = scan.nextLine().split(",");

        Persona persona = new Persona(data[0], Integer.parseInt(data[1]), data[2], Double.parseDouble(data[3]), Double.parseDouble(data[4]));
        persona.calcularIMC();
        persona.esMayorDeEdad();
        System.out.println(persona);
    


    }
}
Scanner scan = new Scanner(System.in);
        
        String[] passIngresada = scan.next().split(",");

        Contrasena pass = new Contrasena(passIngresada[0],passIngresada[1]);
        password.esFuerte();