class Persona {
    public String name;
    public int age;
    public String gender;
    public double weight;
    public double height;

    public Persona(String name, int age, String gender, double weight, double height) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.weight = weight;
        this.height = height;
    }
    
    public void calcularIMC() {
        double imc = weight/Math.pow(height, 2);
        System.out.println(imc);
    }

    public void esMayorDeEdad() {
        if (age >= 18) {
            System.out.println("Es mayor de edad.");
        } else {
            System.out.println("No es mayor de edad");
        }
    
    }

    @Override
    public String toString() {
        String information = "Name: " + name + "; Age: " + age + "; Gender: " + gender + "; Weight: " + weight + "; Height: " + height;        
        return information;
    }

}