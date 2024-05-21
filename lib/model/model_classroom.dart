class Classroom {
  int id;
  String? name;
  String? description;
  String? time;
  String? day;
  String? room;
  int? finalScore;

  Classroom({
    required this.id,
    this.name,
    this.description,
    this.time,
    this.day,
    this.room,
    this.finalScore,
  });

  factory Classroom.fromJson(Map<String, dynamic> json) {
    final data = json;
    return Classroom(
      id: data['id'],
      name: data['name'],
      description: data['description'],
      time: data['time'],
      day: data['day'],
      room: data['room'],
      finalScore: data['final_score'],
    );
  }
}
