import 'package:flutter/material.dart';
import 'package:movis_app/core/routes/app_router.dart';
import 'package:movis_app/core/routes/routes.dart';
import 'package:movis_app/core/theme/app/darck_theme.dart';

class MovisApp extends StatelessWidget {
  final AppRouter appRouter;
  const MovisApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movis App',
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: Routes.homePage,
      onGenerateRoute: appRouter.generateRouter,
    );
  }
}
