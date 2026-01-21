class JourneyModel {
  bool isGo;
  int count;
  String title;

  JourneyModel({required this.isGo, required this.count, required this.title});

  Map<String, dynamic> toJson() {
    return {'title': title, 'count': count, 'isGo': isGo};
  }

  factory JourneyModel.fromJson(Map<String, dynamic> json) {
    return JourneyModel(
      title: json['title'],
      count: json['count'],
      isGo: json['isGo'],
    );
  }
}
