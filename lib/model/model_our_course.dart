class OurCourses {
  int id;
  String? title;
  String? image;
  String? description;
  int studentCount;

  OurCourses({
    required this.id,
    this.title,
    this.image,
    this.description,
    required this.studentCount,
  });

  factory OurCourses.fromJson(Map<String, dynamic> json) {
    final data = json;
    return OurCourses(
      id: data['id'],
      title: data['title'],
      image: data['image'],
      description: data['brief_description'],
      studentCount: data['student_count'],
    );
  }
}
