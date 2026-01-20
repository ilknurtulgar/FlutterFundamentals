import 'struct_class.dart';
import 'team_enum.dart';

void printList<T>(List<NeonAcademyMember> list , T Function(NeonAcademyMember) property, {T Function(NeonAcademyMember)? propertyOption}){
   
   for (var i = 0; i < list.length; i++) {
      if(propertyOption != null) 
        print(" ${propertyOption(list[i])}: ${property(list[i])}");
      else
      print(" $i: ${property(list[i])}");
  }

}

void chooseFlutter(List<NeonAcademyMember> list, List<NeonAcademyMember> newList){
  for (var member in members) {
    switch (member.team) {
      case Team.flutter_development_team:
        newList.add(member);
        break;
        case Team.ios_development_team:
        case Team.android_development_team:
        case Team.ui_ux_design_team:
        break;
    }
  }

}

void placeToTeam(Map<Team, int> maps, List<NeonAcademyMember> list){
  for (var member in list) {
    switch (member.team) {
      case Team.android_development_team:
        maps[Team.android_development_team] =  (maps[Team.android_development_team] ?? 0) + 1; 
        break;
      case Team.flutter_development_team:
        maps[Team.flutter_development_team] = (maps[Team.flutter_development_team] ?? 0) + 1; ; 
        break;
      case Team.ios_development_team:
        maps[Team.ios_development_team] = (maps[Team.ios_development_team] ?? 0) + 1; ; 
        break;
      case Team.ui_ux_design_team:
        maps[Team.ui_ux_design_team] = (maps[Team.ui_ux_design_team] ?? 0) + 1; ; 
        break;
      
    }
  }
}

void printWhoIs(){
  for (var member in members) {

    switch (member.team) {
      case Team.flutter_development_team:
        print("${member.fullName} : Bu üye yetenekli bir Flutter geliştiricisidir.");
        break;
       case Team.android_development_team:
        print("${member.fullName} : Bu üye yetenekli bir Android geliştiricisidir.");
        break;
       case Team.ios_development_team:
        print("${member.fullName} : Bu üye yetenekli bir iOS geliştiricisidir.");
        break;
       case Team.ui_ux_design_team:
        print("${member.fullName} : Bu üye yetenekli bir UI/Ux geliştiricisidir.");
        break;

    }
    
  }
}

void printTeamMember(Team team){
  print("---${team.name}----");
  for (var member in members) {
    if(member.team == team)
      print("${member.fullName}");
  }
}

void inspectAgeToPrint(Team team,var age){
  for (var member in members) {
    switch (member.team) {
      case Team.android_development_team:
        if(member.team == team && member.age > age)
          print("${member.team.name}: ${member.fullName} , ${member.age}");
        break;
      case Team.flutter_development_team:
        if(member.team == team && member.age > age)
          print("${member.team.name}: ${member.fullName} , ${member.age}");
        break;
      case Team.ios_development_team:
        if(member.team == team && member.age > age)
          print("${member.team.name}: ${member.fullName} , ${member.age}");
        break;
      case Team.ui_ux_design_team:
        if(member.team == team && member.age > age)
          print("${member.team.name}: ${member.fullName} , ${member.age}");
        break;
    }
  }
}

void giveToPromotion(){

  for (var member in members) {
    switch (member.team) {
      case Team.android_development_team:
        print("${member.fullName} terfi etti: Kıdemli Android Geliştirici");
        break;
      case Team.flutter_development_team:
        print("${member.fullName} terfi etti: Kıdemli Flutter Geliştirici");
        break;
      case Team.ios_development_team:
        print("${member.fullName} terfi etti: Kıdemli iOS Geliştirici");
        break;
      case Team.ui_ux_design_team:
        print("${member.fullName} terfi etti: Kıdemli Baş Tasarımcı");
        break;
    }
  }
}


void averageToPrint(Team team){
  var totalAge = 0;
  var i = 0;

  for (var member in members) {
    switch (member.team) {
      case Team.android_development_team:
      if(team == Team.android_development_team){
        totalAge += member.age;
        i++;
      }
        break;
      case Team.flutter_development_team:
        if(team == Team.flutter_development_team){
        totalAge += member.age;
        i++;
      }
        break;
      case Team.ios_development_team:
        if(team == Team.ios_development_team){
        totalAge += member.age;
        i++;
      }
        break;
      case Team.ui_ux_design_team:
        if(team == Team.ui_ux_design_team){
        totalAge += member.age;
        i++;
      }
        break;
    }
    
  }
  if(i > 0){
      var average = totalAge / i;
      print("${team.name} - Yaş ortalaması: $average");
  }
}

void messageForTeam(Team team){
    switch (team) {
      case Team.android_development_team:
        print("Android Geliştirme Ekibi, akademimizin omurgasıdır");
        break;
       case Team.flutter_development_team:
        print("Flutter Geliştirme Ekibi, akademimizin omurgasıdır");
        break;
       case Team.ios_development_team:
        print("iOS Geliştirme Ekibi, akademimizin omurgasıdır");
        break;
       case Team.ui_ux_design_team:
        print("UI/UX Tasarımı Ekibi, akademimizin omurgasıdır");
        break;
    }
}

List<ContactInformation> takeTheInformation(Team team){
  List<ContactInformation> infoList = [];
  for (var member in members) {
    switch (member.team) {
      case Team.flutter_development_team:
      if(member.team == team)
          infoList.add(member.contactInformation);
        break;
      case Team.android_development_team:
        if(member.team == team)
          infoList.add(member.contactInformation);
        break;
      case Team.ios_development_team:
        if(member.team == team)
          infoList.add(member.contactInformation);
        break;
      case Team.ui_ux_design_team:
        if(member.team == team)
          infoList.add(member.contactInformation);
        break;
    }
  }
  return infoList;
}

void printToSwitch(Team team, var age){
  for (var member in members) {
    switch (member.team) {
      case Team.android_development_team:
        if(member.age > age)
          print("${member.fullName} üyesi deneyimli bir Android geliştiricisidir.");
        break;
      case Team.flutter_development_team:
        if(member.age > age)
          print("${member.fullName} üyesi deneyimli bir Flutter geliştiricisidir.");
        break;
      case Team.ios_development_team:
        if(member.age > age)
          print("${member.fullName} üyesi deneyimli bir iOS geliştiricisidir.");
        break;
      case Team.ui_ux_design_team:
        if(member.age > age)
          print("${member.fullName} üyesi tasarım dünyasında yükselen bir yıldızdır.");
        break;
    }
  }
}

void main(){
  print("1.-----------before--------");
  var memberList = List<NeonAcademyMember>.from(members);
  List<NeonAcademyMember> flutterMemberList = [];
  printList(memberList, (m) => m.team.name);
  print("1.---------after-----------");
  chooseFlutter(memberList,flutterMemberList);
  printList(flutterMemberList ,(m) => m.team.name, propertyOption: (m) => m.fullName);
  print("                                  ");

  print("2.-----------before--------");
  Map<Team, int> dictionary = {};
  printList(members, (m) => m.team.name, propertyOption : (m) => m.fullName);
  print("2.---------after-----------");
  placeToTeam(dictionary, members);
  print("UI/UX Design Team üye sayısı: ${dictionary[Team.ui_ux_design_team] ?? 0}");
  print("                                  ");


  print("3.-----------todo--------");
  printTeamMember(Team.flutter_development_team);
  print("                                  ");

  print("4.-----------todo--------");
  printWhoIs();
  print("                                  ");

  print("5.-----------todo--------");
  inspectAgeToPrint(Team.flutter_development_team, 25);
  print("                                  ");

  print("6.-----------todo--------");
  giveToPromotion();
  print("                                  ");

  print("7.-----------todo--------");
  averageToPrint(Team.ui_ux_design_team);
  print("                                  ");

  print("8.-----------todo--------");
  messageForTeam(Team.ios_development_team);
  print("                                  ");

  print("9.-----------todo--------");
  List<ContactInformation> infoList = takeTheInformation(Team.flutter_development_team);
  for (var member in infoList) 
    print("${member.email} - ${member.phoneNumber}");
  print("                                  ");

  print("10.-----------todo--------");
  printToSwitch(Team.flutter_development_team,23);
  print("                                  ");
  

}