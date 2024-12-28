import 'package:flutter/material.dart';
import 'package:moody/home_tab/widgets/exercise_grid.dart';
import 'package:moody/home_tab/widgets/mood_bar.dart';
import 'package:moody/home_tab/widgets/positive_vibes.dart';
import 'package:moody/home_tab/widgets/title_bar.dart';
import 'package:moody/home_tab/widgets/welcome_header.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const WelcomeHeader(),
            const SizedBox(height: 16),
            const MoodBar(),
            const SizedBox(height: 40),
            const TitleBar(title1: 'Feature',title2: 'See More',),
            const SizedBox(height: 16),
            PositiveVibes(),
            const SizedBox(height: 40),
            const TitleBar(title1: 'Exercise',title2: 'See More',),
            const SizedBox(height: 16),
            const ExerciseGrid()
          ],
        ),
      ),
    );
  }
}
