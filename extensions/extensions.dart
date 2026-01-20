extension StringExtension on String {
  bool isPalindrome(){
    var reversed = this.split('').reversed.join('');
    return reversed == this;
  }
}

extension IntExtension on int {
  isPrimeNumber(){
    if(this < 2) return false;
    for (var i = 2; i < this / 2; i++) {
      if(this % i == 0) return false;
    }
    return true;
  }
}

extension DateTimeExtension on DateTime {
  int daysBetween(DateTime other){
    return this.difference(other).inDays.abs();
  }
}

extension BoolExtension on bool {
  bool isTrue(){
    return this;
  }
}

extension SetExtension<T> on Set<T> {
  Set<T> removeDuplicate(){
    return this.toSet();
  }
}

extension mapExtension on Map<String, List<String>>{
  //key string soyadı
  //value list<string>
 void addPerson(Person person){
  if(this.containsKey(person.surname))
    this[person.surname]!.add(person.name);
  else
    this[person.surname] = [person.name];
 }

 void printInfo(){
  this.forEach((name, surname){
    print("${name} ${surname}");
  });
 }

}
class Person {
  final name;
  final surname;

  Person({required this.name, required this.surname});
}

List<Person> personList = [
  Person(name: "Ali", surname: "Kara"),
  Person(name: "Hamza", surname: "Karakoç"),
  Person(name: "Engin", surname: "Polat"),
  Person(name: "Şevval", surname: "Temel")
];

void main(){
  print("1.-------stringExtension-----------");
  print("ilknur".isPalindrome());
  print("                      ");

  print("2.---------intExtension----------");
  print("10".isPalindrome());
  print("                      ");

  print("3.---------dateTimeExtension----------");
  DateTime start = DateTime(2026,1,2);
  DateTime end = DateTime(2026,1,15);
  print("Gün farkı: ${start.daysBetween(end)}");
  print("                      ");

  print("4.---------boolExtension----------");
  bool variable = false;
  print("true mı?: ${variable.isTrue()}");
  print("                      ");

  print("5.---------setExtension----------");
  Set duplicateSet = {1,2,1,1};
  var correctedArray = duplicateSet.removeDuplicate();
  print(correctedArray);
  print("                      ");

  print("6.---------MapExtension----------");
  Map<String, List<String>> grouped = {};
  for (var person in personList) {
      grouped.addPerson(person);
  }
  grouped.printInfo();
  print("                      ");

}