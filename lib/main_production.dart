import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/routes/app_router.dart';
import 'package:movis_app/move_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (context, child) => MovisApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
