class UserModel {
  String username;
  String email;
  String password;
  bool isAdmin;

  UserModel({
    required this.username,
    required this.email,
    required this.password,
    this.isAdmin = false,
  });

  UserModel copyWith({
    String? username,
    String? email,
    String? password,
    bool? isAdmin,
  }) {
    return UserModel(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      isAdmin: isAdmin ?? this.isAdmin,
    );
  }
}
