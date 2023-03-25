import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import '../resource/authMethod.dart';


class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}