class Person {
  late String Name;
  int age;
  Person(String name, this.age) {
    Name = name;
  }
  void getInfo() {
    print("$Name---$age");
  }
}

void main() {
  Person person = new Person('asd', 123);
  person.getInfo();
}
