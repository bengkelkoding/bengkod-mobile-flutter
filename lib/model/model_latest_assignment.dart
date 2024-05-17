class LatestAssignment {
  int? id;
  String? title;
  String? description;
  String? deadline;
  bool? isUploaded;
  int? score;
  String? status;

  LatestAssignment(
      {this.id,
      this.title,
      this.description,
      this.deadline,
      this.isUploaded,
      this.score,
      this.status});

  LatestAssignment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    deadline = json['deadline'];
    isUploaded = json['is_uploaded'];
    score = json['score'];
    status = json['status'];
  }
}
