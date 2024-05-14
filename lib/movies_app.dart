import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Core/routing/app_router.dart';
import 'package:movies_app/Core/routing/routes.dart';
import 'package:movies_app/constants.dart';

class MoviesApp extends StatelessWidget {
  final AppRouter appRouter;

  const MoviesApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Movies App',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
        ),
        initialRoute: Routes.splashView,
      ),
    );
  }
}
