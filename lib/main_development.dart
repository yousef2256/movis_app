import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/routes/app_router.dart';
import 'package:movis_app/move_app.dart';

void main() async {
  //to fix screen utill bugs (text hidden in relise mood),
  await ScreenUtil.ensureScreenSize();
  runApp(
    MovisApp(
      appRouter: AppRouter(),
    ),
  );
}
