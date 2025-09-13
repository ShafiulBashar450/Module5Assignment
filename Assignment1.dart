class Book{
  String title;
  String author;
  double price;
  
  Book(this.title, this.author, this.price);
  
  double discountedPrice(double discountPercent){
    return price - (price * discountPercent / 100);
  }
  
  void displayDetails(double discountPercent){
    
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print("Discount price: \$${discountedPrice(discountPercent).toStringAsFixed(2)}");

    void main(){
      Book book1 = Book("Dart Programming", "Shafiul Bashar", 500);
      Book book2 = Book("Flutter Development", "Hridoy Bashar", 1000);

      book1.displayDetails(10);  //10% discount
      book2.displayDetails(15);  //15% discount
    }
  }
  
}