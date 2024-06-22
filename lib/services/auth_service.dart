import '../models/user_model.dart';

class AuthService {
  final List<UserModel> _users = [
    UserModel(
        username: 'admin',
        email: 'admin@gmail.com',
        password: 'admin',
        isAdmin: true),
  ];

  UserModel? _loggedInUser;

  UserModel? get loggedInUser => _loggedInUser;

  bool register(String username, String email, String password) {
    if (_users
        .any((user) => user.email == email || user.username == username)) {
      return false; // User with same email or username already exists
    }
    _users.add(UserModel(username: username, email: email, password: password));
    print('User registered: $username ($email)');
    return true;
  }

  bool login(String username, String password) {
    try {
      final user = _users.firstWhere(
        (user) => user.username == username && user.password == password,
      );
      _loggedInUser = user;
      print('User logged in: ${user.username} (${user.email})');
      return true;
    } catch (e) {
      print('Login failed for username: $username');
      return false;
    }
  }

  void logout() {
    print(
        'User logged out: ${_loggedInUser?.username} (${_loggedInUser?.email})');
    _loggedInUser = null;
  }

  bool updateProfile(String newUsername, String newEmail, String newPassword) {
    if (_loggedInUser == null) {
      return false;
    }
    // Check for duplicate username or email in other users
    if (_users.any((user) =>
        (user.email == newEmail || user.username == newUsername) &&
        user != _loggedInUser)) {
      return false; // User with same email or username already exists
    }
    // Update profile and password
    _loggedInUser!.username = newUsername;
    _loggedInUser!.email = newEmail;
    if (newPassword.isNotEmpty) {
      _loggedInUser!.password = newPassword;
    }
    print(
        'Profile updated for: ${_loggedInUser!.username} (${_loggedInUser!.email})');
    return true;
  }

  List<UserModel> getAllUsers() {
    return _users;
  }

  bool deleteUser(String username) {
    final user = _users.firstWhere((user) => user.username == username,
        orElse: () => UserModel(username: '', email: '', password: ''));
    if (user.username.isNotEmpty) {
      _users.remove(user);
      print('User deleted: $username');
      return true;
    }
    return false;
  }
}
