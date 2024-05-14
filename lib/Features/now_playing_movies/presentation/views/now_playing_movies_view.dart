import 'package:flutter/material.dart';
import 'package:movies_app/constants.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Now Playing Movies',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kScaffoldBackgroundColor,
      ),
      body: const Center(
        child: Text(
          'Now Playing Movies',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
