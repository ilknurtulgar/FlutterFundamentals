import 'dart:io';
import 'struct_class.dart';

List<NeonAcademyMember> members = [
  NeonAcademyMember(fullName: "İlknur Tulgar", title: "Flutter Developer", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Gümüşhane", age: 23 , contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ilknur@etc.com")),
  NeonAcademyMember(fullName: "Ahmet Yılmaz", title: "IOS Developer", horoscope: "Leo", memberLevel: "B2", homeTown: "İstanbul", age: 28, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "ahmet@etc.com")),
  NeonAcademyMember(fullName: "Zeynep Kaya", title: "Android Developer", horoscope: "Gemini", memberLevel: "A2", homeTown: "Ankara", age: 25, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "zeynep@etc.com")),
  NeonAcademyMember(fullName: "Mert Demir", title: "Flutter Developer", horoscope: "Virgo", memberLevel:"C1", homeTown: "İzmir", age: 30, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "mert@etc.com")),
  NeonAcademyMember(fullName: "Elif Arslan", title: "IOS Developer", horoscope: "Scorpio", memberLevel: "B1", homeTown:"İstanbul", age: 27, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "elif@etc.com"))
];

void printList<T>(List<NeonAcademyMember> list , T Function(NeonAcademyMember) property, {T Function(NeonAcademyMember)? propertyOption}){
   
   for (var i = 0; i < list.length; i++) {
      if(propertyOption != null) 
        print(" ${propertyOption(list[i])}: ${property(list[i])}");
      else
      print(" $i: ${property(list[i])}");
  }

}

void main(){
  print("1.-----------before--------");
  printList(members ,(members) => members.fullName);
  members.removeAt(2);
  print("1.---------after-----------");
  printList(members, (members) => members.fullName);
  print("                                  ");

  print("2.-----------before--------");
  var sortedAges = List<NeonAcademyMember>.from(members);
  printList(sortedAges ,(sortedAges) => sortedAges.age);
  sortedAges.sort((a , b) => b.age.compareTo(a.age));
  print("2.---------after-----------");
  printList(sortedAges, (sortedAges) => sortedAges.age);
  print("                                  ");

  print("3.-----------before--------");
  var sortedNames = List<NeonAcademyMember>.from(members);
  printList(sortedNames, (sortedNames) => sortedNames.fullName);
  print("3.---------after-----------");
  sortedNames.sort((a , b) => b.fullName.compareTo(a.fullName));
  printList(sortedNames ,(sortedNames) => sortedNames.fullName);
  print("                                  ");

  print("4.-----------before--------");
  var filterAge = List<NeonAcademyMember>.from(members);
  printList(filterAge, (m) => m.fullName, propertyOption:(m) => m.age);
  print("4.---------after-----------");
  var olderThanList = filterAge.where((m) => m.age > 24).toList();
  printList(olderThanList, (olderThanList) => olderThanList.fullName, propertyOption:(olderThanList) => olderThanList.age);
  print("                                  ");

  print("5.-----------before--------");
  var filterTitle = List<NeonAcademyMember>.from(members);
    printList(filterTitle, (m) => m.title, propertyOption:(m) => m.fullName);
  print("5.---------after-----------");
  var olderThanTitle = filterTitle.where((m) => m.title =="IOS Developer").toList();
  printList(olderThanTitle ,(olderThanTitle) => olderThanTitle.title, propertyOption: (olderThanTitle) => olderThanTitle.fullName);
  print("Toplam iOS Developer sayısı: ${olderThanTitle.length}");
  print("                                  ");

  print("6.-----------todo--------");
  for (var i = 0; i < members.length; i++) {
      if(members[i].fullName == "İlknur Tulgar")
        print("$i: ${members[i].fullName}");
  }
  print("                                  ");

  print("7.-----------before--------");
  var specialMentorList = List<NeonAcademyMember>.from(members);
  printList(specialMentorList, (m) => (m.fullName));
  print("7.---------after-----------");
  specialMentorList.add(NeonAcademyMember(fullName: "Betül Kara", title: "UI & UX Designer", horoscope: "Scropio", memberLevel: "C2", homeTown: "Sinop", age: 20, contactInformation: ContactInformation(phoneNumber: 05555555555, email: "betul@etc.com"), mentorLevel: "Middle"));
  printList(specialMentorList, (m) => (m.fullName));
  print("                                  ");


  print("8.-----------before--------");
  var noneA1List = List<NeonAcademyMember>.from(members);
  printList(noneA1List, (m) => (m.fullName));
  print("8.---------after-----------");
  for (var i = 0; i < noneA1List.length; i++) {
    if(noneA1List[i].memberLevel == "A1"){
        noneA1List.removeAt(i);
        i--;
    }
  }
  printList(noneA1List, (m) => (m.fullName));
  print("                                  ");

  print("9.-----------todo--------");
  var oldestMember = sortedAges.first;
  print("${oldestMember.fullName} :${oldestMember.age}");
  print("                                  ");


  print("10.-----------before--------");
   var sortedNamesLenght = List<NeonAcademyMember>.from(members);
   var sortedLenght = 0;
   var sortedName = ""; 
   for (var i = 0; i < sortedNamesLenght.length; i++) {
      if(sortedNamesLenght[i].fullName.length > sortedLenght){
        sortedLenght = sortedNamesLenght[i].fullName.length;
        sortedName = sortedNamesLenght[i].fullName;
      }
      print("${sortedNamesLenght[i].fullName} : ${sortedNamesLenght[i].fullName.length}");
   }

  print("10.---------after-----------");
  print("${sortedName}: ${sortedLenght}");
  print("                                  ");

  print("11.-----------before--------");
  Map<String, List<NeonAcademyMember>> sameHoroscopePerson = {}; 
  printList(members, (m) => m.horoscope, propertyOption: (m) => m.fullName);
  print("11.---------after-----------");
  for(var member in members){
    sameHoroscopePerson.putIfAbsent(member.horoscope, () => []);
    sameHoroscopePerson[member.horoscope]!.add(member);
  }
  sameHoroscopePerson.forEach((horoscope, memberList){
    print("$horoscope: ");
    printList(memberList, (m) => m.fullName);

  });
  print("                                  ");

  print("12.-----------before--------");
  Map<String, List<NeonAcademyMember>> sameCityList = {}; 
  printList(members, (m) => m.homeTown, propertyOption: (m) => m.fullName);
  print("12.---------after-----------");
  for(var member in members){
    sameCityList.putIfAbsent(member.homeTown, () => []);
    sameCityList[member.homeTown]!.add(member);
  }
  var cityLenght = 0;
  var cityName = "";
  sameCityList.forEach((city, list){
    if(list.length > cityLenght){
      cityLenght = list.length;
      cityName = city;
    }
  });
  print("En yaygın şehir : ${cityName}");
  print("                                  ");

  print("13.-----------todo--------");
  var totalAge = members.map((m) => m.age).fold(0, (sum, age) => sum + age);
  var averageAge = totalAge / members.length;
  print("Ortalama yaş: $averageAge");
  print("                                  ");

  print("14.-----------todo--------");
  List<ContactInformation> contactList = [];
  for (var i = 0; i < members.length; i++) {
    contactList.add(
      ContactInformation(phoneNumber: members[i].contactInformation.phoneNumber, email: members[i].contactInformation.email)
    );
  }
  for (var i = 0; i < contactList.length; i++) 
    print("email : ${contactList[i].email}");
  print("                                  ");

  print("15.-----------before--------");
   var memberLevelList = List<NeonAcademyMember>.from(members);
  printList(memberLevelList, (m) => m.memberLevel,propertyOption: (m) => m.fullName);
  print("15.---------after-----------");
  memberLevelList.sort((a , b) => b.memberLevel.compareTo(a.memberLevel));
  printList(memberLevelList, (m) => m.memberLevel,propertyOption: (m) => m.fullName);
  print("                                  ");
  
  print("16.-----------before--------");
  Map<String, List<ContactInformation>> sameInfoList = {}; 
  printList(members, (m) => m.title, propertyOption: (m) => m.fullName);
  print("16.---------after-----------");
  for(var member in members){
    sameInfoList.putIfAbsent(member.title, () => []);
    sameInfoList[member.title]!.add(member.contactInformation);
  }
  sameInfoList.forEach((title, contactList){
    print("$title: ");
    for(var info in contactList)
      print("${info.phoneNumber}");

  });
  print("                                  ");
 
}