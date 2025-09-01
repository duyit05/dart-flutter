abstract class Animal {
  void sound();
  void info() {
    print("Tôi là 1 con vật");
  }
}

class Dog extends Animal {
  String name;
  
  Dog(this.name);

  @override
  void sound () {
    print("Gâu Gâu Gâu");
  }

  @override
  void info (){
    print("Tên của tôi là: ${name}");
  }
}

class Cat extends Animal {
  String name;
  Cat (this.name);

  @override
  void sound () {
    print("Meo Meo Meo");
  }

  @override
  void info () {
    print("Tên của tôi là: ${name}");
  }
}

void main () {
  Dog dog = new Dog('Chó cỏ');
  dog.sound();
  dog.info();

  Cat cat = new Cat('Min');
  cat.sound();
  cat.info();
}
