import 'package:flutter/material.dart';
import 'package:movis_app/core/routes/app_router.dart';
import 'package:movis_app/move_app.dart';

void main() {
  runApp(
    MovisApp(
      appRouter: AppRouter(),
    ),
  );
}
