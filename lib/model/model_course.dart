class CourseModel {
  int id;
  String? image;
  String? title;
  String? description;
  String? courseProgress;

  CourseModel({
    required this.id,
    this.image,
    this.title,
    this.description,
    this.courseProgress,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    final data = json;
    return CourseModel(
      id: data['id'],
      image: data['image'],
      title: data['title'],
      description: data['description'],
      courseProgress: data['course_progress'],
    );
  }
}
