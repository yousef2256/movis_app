import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis_app/core/di/dependenvy_injection.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/features/auth_features/login/UI/login_page.dart';
import 'package:movis_app/features/auth_features/login/logic/login_cubit.dart';
import 'package:movis_app/features/auth_features/onpording/UI/onpording_screen.dart';
import 'package:movis_app/features/auth_features/register/UI/register_page.dart';
import 'package:movis_app/features/auth_features/fotget_password/forget_password.dart';
import 'package:movis_app/features/auth_features/register/logic/cubit/register_cubit.dart';
import 'package:movis_app/features/home_features/logic/home_cubit.dart';
import 'package:movis_app/features/layout/layout.dart';
import 'package:movis_app/features/layout/logic/layout_cubit.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      // layout page
      case Routes.layout:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(providers: [
            BlocProvider(create: (context) => getIt<LayoutCubit>()),
            BlocProvider(
                create: (context) => getIt<HomeCubit>()..getNowPlayingMovies()),
          ], child: const Layout()),
        );

      // auth pages
      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(),
            child: LoginPage(),
          ),
        );

      // Register Page
      case Routes.registerPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => RegisterCubit(),
            child: RegisterPage(),
          ),
        );

      // Forgot Password Page
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (context) => ForgetPassword(),
        );
      case Routes.onpordingPage:
        return MaterialPageRoute(
          builder: (context) => const OnpordingScreen(),
        );

      // Default Route if no route is defined
      default:
        return null;
    }
  }
}
