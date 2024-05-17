class OurCourses {
  int? id;
  String? title;
  String? image;
  String? description;
  String? studentCount;

  OurCourses(
      {this.id, this.title, this.image, this.description, this.studentCount});
  OurCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    studentCount = json['student_count'];
  }
}
