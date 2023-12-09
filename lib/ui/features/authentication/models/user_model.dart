class UserModel {
  String? fullName;
  String? email;
  String? password;
  String? faculty;
  String? department;
  int? grade;

  UserModel(
      {this.fullName,
      this.email,
      this.password,
      this.faculty,
      this.department,
      this.grade});

  UserModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    password = json['password'];
    faculty = json['faculty'];
    department = json['department'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['email'] = email;
    data['password'] = password;
    data['faculty'] = faculty;
    data['department'] = department;
    data['grade'] = grade;
    return data;
  }
}
