//Erika Espejo

class Articulo {

    String articleName;
    int quantity;
    double cost;
    
    public Articulo(String articleName, int quantity, double cost) {
        this.articleName = articleName;
        this.quantity = quantity;
        this.cost = cost;
    }

    public double totalPerArticle() {
        return this.quantity * this.cost;
    }

    @Override
    public String toString() {
        String article = articleName + " x" + quantity + " $" + (int)totalPerArticle();
        return article;
    }
}
