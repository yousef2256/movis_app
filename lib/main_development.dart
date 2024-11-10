import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis_app/core/routes/app_router.dart';
import 'package:movis_app/features/layout/logic/cubit/BlocObserver.dart';
import 'package:movis_app/move_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    MovisApp(
      appRouter: AppRouter(),
    ),
  );
}
