class NeonAcademyMember {
  final String fullName;
  final String title;
  final String horoscope;
  final String memberLevel;
  final String homeTown;
  final int age;
  final ContactInformation contactInformation;
  int? motivationLevel;
  NeonAcademyMember({required this.fullName, required this.title, required this.horoscope, required this.memberLevel, required this.homeTown, required this.age, required this.contactInformation, this.motivationLevel});

}
class ContactInformation {
  final int phoneNumber;
  final String email;

  ContactInformation({required this.phoneNumber, required this.email});
}

List<NeonAcademyMember> members = [
  NeonAcademyMember(fullName: "İlknur Tulgar", title: "Flutter Developer", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Gümüşhane", age: 23 , contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ilknur@etc.com"), motivationLevel: 80),
  NeonAcademyMember(fullName: "Ahmet Yılmaz", title: "IOS Developer", horoscope: "Leo", memberLevel: "B2", homeTown: "İstanbul", age: 28, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ahmet@etc.com"),motivationLevel:  65),
  NeonAcademyMember(fullName: "Zeynep Kaya", title: "Android Developer", horoscope: "Gemini", memberLevel: "A2", homeTown: "Ankara", age: 25, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "zeynep@etc.com")),
  NeonAcademyMember(fullName: "Mert Demir", title: "Flutter Developer", horoscope: "Virgo", memberLevel:"C1", homeTown: "İzmir", age: 30, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "mert@etc.com"), motivationLevel: 100),
  NeonAcademyMember(fullName: "Elif Arslan", title: "IOS Developer", horoscope: "Scorpio", memberLevel: "B1", homeTown:"İstanbul", age: 27, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "elif@etc.com"))
];

void main(){
  var contact = ContactInformation(phoneNumber: 123, email: "etc@gmail.com");
  var neonAcademyMember = NeonAcademyMember(fullName: "İlknur Tulgar", title: "Flutter Developer", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Gümüşhane", age: 23, contactInformation: contact);
  print("phone: ${contact.phoneNumber}");
  print("email: ${contact.email}");
  print("fullName: ${neonAcademyMember.fullName}");
  print("title: ${neonAcademyMember.title}");
  print("horoscope: ${neonAcademyMember.horoscope}");
  print("memberLevel: ${neonAcademyMember.memberLevel}");
  print("homeTown: ${neonAcademyMember.homeTown}");
  print("age: ${neonAcademyMember.age}");

}