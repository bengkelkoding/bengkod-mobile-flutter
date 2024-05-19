class Profile {
  int? id;
  String? nim;
  String? name;
  String? email;

  Profile({this.id, this.nim, this.name, this.email});

  Profile.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

    id = data['id'];
    nim = data['identity_code'];
    name = data['name'];
    email = data['email'];
  }
}
