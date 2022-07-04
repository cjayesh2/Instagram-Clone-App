import 'package:flutter/cupertino.dart';
import 'package:jayesh/resources/auth_methods.dart';
import 'package:jayesh/resources/user.dart';

class UserProvider with ChangeNotifier{

final AuthMethods _authMethods = AuthMethods();
User? _user;
User get getUser => _user!;

Future<void> refreshUser() async{

User user =  await _authMethods.getUserDetails();
_user = user;
notifyListeners();

}


}