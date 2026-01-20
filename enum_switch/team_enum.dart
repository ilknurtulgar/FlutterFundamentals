import 'struct_class.dart';

enum Team {
  flutter_development_team,
  ios_development_team,
  android_development_team,
  ui_ux_design_team
}

List<NeonAcademyMember> members = [

  NeonAcademyMember(fullName: "İlknur Tulgar", title: "Flutter Developer", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Gümüşhane", age: 23 , contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ilknur@etc.com"), team: Team.flutter_development_team),
  NeonAcademyMember(fullName: "Ahmet Yılmaz", title: "IOS Developer", horoscope: "Leo", memberLevel: "B2", homeTown: "İstanbul", age: 28, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ahmet@etc.com"),team: Team.ios_development_team),
  NeonAcademyMember(fullName: "Zeynep Kaya", title: "Android Developer", horoscope: "Gemini", memberLevel: "A2", homeTown: "Ankara", age: 25, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "zeynep@etc.com"), team:  Team.android_development_team),
  NeonAcademyMember(fullName: "Mert Demir", title: "Flutter Developer", horoscope: "Virgo", memberLevel:"C1", homeTown: "İzmir", age: 30, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "mert@etc.com"), team:  Team.flutter_development_team),
  NeonAcademyMember(fullName: "Elif Arslan", title: "IOS Developer", horoscope: "Scorpio", memberLevel: "B1", homeTown:"İstanbul", age: 27, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "elif@etc.com"), team: Team.ios_development_team),
  NeonAcademyMember(fullName: "Zeynep Aslan", title: "UI/UX Designer", horoscope: "Scorpio", memberLevel: "A2", homeTown: "İstanbul", age: 23, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "zey@etc.com"), team: Team.ui_ux_design_team)
];