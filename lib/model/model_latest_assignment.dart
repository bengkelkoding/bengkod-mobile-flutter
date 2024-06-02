class LatestAssignment {
  int id;
  String? title;
  String? description;
  String? deadline;
  bool? isUploaded;
  Tasks? task;

  LatestAssignment(
      {required this.id,
      this.title,
      this.description,
      this.deadline,
      this.isUploaded,
      this.task});

  factory LatestAssignment.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    return LatestAssignment(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      deadline: data['deadline'],
      isUploaded: data['is_uploaded'],
      task: Tasks.fromJson(
        data['task'],
      ),
    );
  }
}

class Tasks {
  int id;
  int score;
  String? status;

  Tasks({required this.id, required this.score, required this.status});

  factory Tasks.fromJson(Map<String, dynamic> json) {
    final task = json['data']['task'];
    return Tasks(
      id: task['id'],
      score: task['score'],
      status: task['status'],
    );
  }
}
