import 'package:flutter/material.dart';
import 'package:listo/features/login/ui/login.dart';
import 'package:listo/features/register/ui/register.dart';

class Routes {
  static const String startPage = '/start';
  static const String loginPage = '/login';
  static const String registerPage = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (_) => const Login());
      case registerPage:
        return MaterialPageRoute(builder: (_) => const Register());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
                child: Text(
              'Bienvenue dans LISTO',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
        );
    }
  }
}
