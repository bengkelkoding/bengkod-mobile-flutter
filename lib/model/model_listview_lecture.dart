class ListViewLectureModel {
  String? identityCode;
  String? name;
  String? role;
  String? image;

  ListViewLectureModel({
    this.identityCode,
    this.name,
    this.role,
    this.image,
  });

  factory ListViewLectureModel.fromJson(Map<String, dynamic> json) {
    final data = json;
    return ListViewLectureModel(
      identityCode: data['identity_code'],
      name: data['name'],
      role: data['role'],
      image: data['image'],
    );
  }
}
