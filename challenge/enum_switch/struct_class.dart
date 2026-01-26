
import 'team_enum.dart';

class NeonAcademyMember {
  final String fullName;
  final String title;
  final String horoscope;
  final String memberLevel;
  final String homeTown;
  final int age;
  final ContactInformation contactInformation;
  final Team team;

  NeonAcademyMember({required this.fullName, required this.title, required this.horoscope, required this.memberLevel, required this.homeTown, required this.age, required this.contactInformation, required this.team});

}
class ContactInformation {
  final int phoneNumber;
  final String email;

  ContactInformation({required this.phoneNumber, required this.email});
}


void main(){
  var contact = ContactInformation(phoneNumber: 123, email: "etc@gmail.com");
  var neonAcademyMember = NeonAcademyMember(fullName: "İlknur Tulgar", title: "Flutter Developer", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Gümüşhane", age: 23, contactInformation: contact,team: Team.flutter_development_team);
  print("phone: ${contact.phoneNumber}");
  print("email: ${contact.email}");
  print("fullName: ${neonAcademyMember.fullName}");
  print("title: ${neonAcademyMember.title}");
  print("horoscope: ${neonAcademyMember.horoscope}");
  print("memberLevel: ${neonAcademyMember.memberLevel}");
  print("homeTown: ${neonAcademyMember.homeTown}");
  print("age: ${neonAcademyMember.age}");

}