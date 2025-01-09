import 'package:flutter/foundation.dart';
import '../models/user.dart';

class AuthProvider with ChangeNotifier {
  User? _user;
  User? get user => _user;
  Future<void> register(String name, String email, String password) async {
   
    print('Registering user: $name, $email');

  }

  Future<void> signIn(String email, String password) async {
    print('Signing in user: $email');
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
