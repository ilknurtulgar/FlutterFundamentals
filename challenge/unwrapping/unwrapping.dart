import 'struct_class.dart';

void increaseMotivation(int level){
  for (var i = 0; i < members.length; i++) {
    if(members[i].motivationLevel != null)
      members[i].motivationLevel = members[i].motivationLevel! + level;
    else
      members[i].motivationLevel = 1;  
  }      
}

void lookToLevel(String fullName){
  for (var i = 0; i < members.length; i++) {
    if(members[i].fullName == fullName){
       if(members[i].motivationLevel != null && members[i].motivationLevel! > 5)
          print("${members[i].fullName}, Bu üye oldukça motive.");
        else if(members[i].motivationLevel == null)
          print("${members[i].fullName}, Bu üyenin motivasyon seviyesi ayarlanmamış.");
        else 
          print("${members[i].fullName}, Bu üyenin motivasyon seviyesi düşük.");
        }

  }
}

String motivationScale(var motivationLevel){

  if(motivationLevel == null)
    return "Hiç motivasyonu yok :(";
  else if(motivationLevel > 50 && motivationLevel! < 80)
    return "Orta Motivasyonlu :)";
  else
    return "Yüksek Motivasyonlu :)";
}

int getMotivationLevel(NeonAcademyMember member){
  return member.motivationLevel ?? 0;
}

bool resultMotivation(NeonAcademyMember member, var expectedMotivationLevel){
  if(member.motivationLevel != null && member.motivationLevel! >= expectedMotivationLevel)
    return true;
  else
    return false;
}

void main(){
  print("1.-----------todo--------");
  lookToLevel(members.first.fullName);
  print("                                  ");

  print("2.-----------todo--------");
  print("${(motivationScale(80))}");
  print("                                  ");

  print("3.-----------todo--------");
  print("Motivasyon Leveli: ${getMotivationLevel(members.first)}");
  print("                                  ");

  print("4.-----------todo--------");
  print("Result : ${resultMotivation(members.first, 80)}");
  print("                                  ");
}
