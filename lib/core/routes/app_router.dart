import 'package:flutter/material.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/features/auth_features/login/UI/login_page.dart';
import 'package:movis_app/features/auth_features/onpording/UI/onpording_screen.dart';
import 'package:movis_app/features/auth_features/register/register_page.dart';
import 'package:movis_app/features/auth_features/fotget_password/forget_password.dart';
import 'package:movis_app/features/home_features/UI/home_screen.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case Routes.registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPassword(),
        );
      case Routes.onpordingPage:
        return MaterialPageRoute(
          builder: (context) => const OnpordingScreen(),
        );

      // Default Route if no route is defined
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route Defined for ${settings.name}')),
          ),
        );
    }
  }
}