class LoginRequest {
  LoginRequest({
    required this.username,
    required this.password,
  });

  final String? username;
  final String? password;

  LoginRequest copyWith({
    String? username,
    String? password,
  }) {
    return LoginRequest(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return LoginRequest(
      username: json["username"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };

  @override
  String toString() {
    return "$username, $password, ";
  }
}
