import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_app/Core/utils/assets.dart';
import 'package:movies_app/Features/now_playing_movies/presentation/views/now_playing_movies_view.dart';
import 'package:movies_app/constants.dart';
import 'package:page_transition/page_transition.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset(AssetsData.splashViewJsonFile),
      backgroundColor: kScaffoldBackgroundColor,
      nextScreen: const NowPlayingMoviesView(),
      splashIconSize: 300,
      duration: 2100,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
