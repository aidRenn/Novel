import '../services/auth_service.dart';
import '../models/user_model.dart';

class AuthController {
  static final AuthController _instance = AuthController._internal();
  factory AuthController() => _instance;

  final AuthService _authService = AuthService();

  AuthController._internal();

  bool register(String username, String email, String password) {
    return _authService.register(username, email, password);
  }

  bool login(String username, String password) {
    return _authService.login(username, password);
  }

  void logout() {
    _authService.logout();
  }

  bool get isLoggedIn => _authService.loggedInUser != null;

  UserModel? get loggedInUser => _authService.loggedInUser;

  bool updateProfile(String newUsername, String newEmail, String newPassword) {
    return _authService.updateProfile(newUsername, newEmail, newPassword);
  }

  List<UserModel> getAllUsers() {
    return _authService.getAllUsers();
  }

  bool deleteUser(String username) {
    return _authService.deleteUser(username);
  }
}
