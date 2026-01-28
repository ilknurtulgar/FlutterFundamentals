enum Team {
  Flutter,
  iOS,
  Android,
  Design,
}

class PassengerModel {
  final String name;
  final String surname;
  final Team team;
  final int age;
  final String email;
  final String homeTown;

  PassengerModel({required this.age, required this.name, required this.surname, required this.email, required this.homeTown, required this.team});
}

List<PassengerModel> passengers = [
  PassengerModel(name: "İlknur", surname: "Tulgar", team: Team.Flutter, age: 23, email: "ilknur@mail.com", homeTown: "İstanbul"),
  PassengerModel(name: "Ahmet", surname: "Yılmaz", team: Team.iOS, age: 25, email: "ahmet@mail.com", homeTown: "Ankara"),
  PassengerModel(name: "Ayşe", surname: "Kaya", team: Team.Design, age: 22, email: "ayse@mail.com", homeTown: "İzmir"),
  PassengerModel(name: "Can", surname: "Kaya", team: Team.Android, age: 28, email: "can@mail.com", homeTown: "İzmir"),
];