import java.util.Scanner;

public class grootErika {
    
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int nCapas = Integer.parseInt(sc.nextLine());
    
    String[] mensaje = new String[nCapas];

    String iAm="I am";
    String iGroot="I groot";

    int i=0;
    int j=1;

    int numero = nCapas-1;

    for (i=0;i<numero;i+=2){ //llena los espacios pares con I am a excepcion del ultimo
        mensaje[i]=iAm;
    }

    for (j=1;j<numero;j+=2){ //llena los espacios impares con I groot a excepcion del ultimo
        mensaje[j]=iGroot;
    }

    if(nCapas%2==0){  //en caso de que las capas sean pares llena el ultimo espacio con I groot it o en caso contrario con I am it.
        mensaje[numero]="I groot it"; 
    }else{
        mensaje[numero]="I am it";
    }
        
    for (int k=0;k<numero;k++){ //imprime el arreglo separando con that a excepcion del ultimo campo
        String y = (mensaje[k] + " that " );
        System.out.print(y);
    }
    
    System.out.print(mensaje[numero]); //imprime el ultimo campo
  }
}