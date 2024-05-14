import 'package:flutter/material.dart';
import 'package:movies_app/Core/routing/app_router.dart';
import 'package:movies_app/movies_app.dart';

void main() {
  // setupGetIt();
  runApp(
    MoviesApp(
      appRouter: AppRouter(),
    ),
  );
}
