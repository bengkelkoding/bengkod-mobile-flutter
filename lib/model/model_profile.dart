class Profile {
  int? id;
  String? nim;
  String? name;
  String? email;

  Profile({this.id, this.nim, this.name, this.email});
  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nim = json['identity_code'];
    name = json['name'];
    email = json['email'];
  }
}
