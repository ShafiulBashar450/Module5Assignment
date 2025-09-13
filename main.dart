// Problem 1: Book
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void displayDetails(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print("Discounted Price: \$${discountedPrice(discountPercent).toStringAsFixed(2)}");
    print("---------------");
  }
}

// Problem 2: Employee
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("Manager Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
    print("Department: $department");
    print("---------------");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("Developer Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
    print("Programming Language: $programmingLanguage");
    print("---------------");
  }
}

// Problem 3: Appliance
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan has been turned off.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light has been switched off.");
  }
}

//Main Function
void main() {
  print("=== Problem 1: Book ===");
  Book book1 = Book("Dart Programming", "Shafiul Bashar", 500.0);
  Book book2 = Book("Flutter Development", "Hridoy", 750.0);
  book1.displayDetails(10); // 10% discount
  book2.displayDetails(15); // 15% discount

  print("\n=== Problem 2: Employee ===");
  Manager m1 = Manager("Shafiul Bashar", 90000, "HR");
  Developer d1 = Developer("Hridoy", 80000, "Dart");
  m1.displayInfo();
  d1.displayInfo();

  print("\n=== Problem 3: Appliance ===");
  Fan fan = Fan();
  fan.turnOn();
  fan.turnOff();

  Light light = Light();
  light.turnOn();
  light.turnOff();
}
