class JoinedClassroom {
  int id;
  String? courseTitle;
  Classroom? classroom;

  JoinedClassroom({
    required this.id,
    this.courseTitle,
    this.classroom,
  });

  factory JoinedClassroom.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    return JoinedClassroom(
      id: data['id'],
      courseTitle: data['course_title'],
      classroom: Classroom.fromJson(data['classroom']),
    );
  }
}

class Classroom {
  int id;
  String name;

  Classroom({
    required this.id,
    required this.name,
  });

  factory Classroom.fromJson(Map<String, dynamic> json) {
    return Classroom(
      id: json['id'],
      name: json['name'],
    );
  }
}
