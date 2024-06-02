class ListViewStudentModel {
  String? identityCode;
  String? name;
  String? image;

  ListViewStudentModel({
    this.identityCode,
    this.name,
    this.image,
  });

  factory ListViewStudentModel.fromJson(Map<String, dynamic> json) {
    final data = json;
    return ListViewStudentModel(
      identityCode: data['identity_code'],
      name: data['name'],
      image: data['image'],
    );
  }
}
