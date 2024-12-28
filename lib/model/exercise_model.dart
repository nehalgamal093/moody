import 'package:flutter/material.dart';

import '../theme/color_manager.dart';

class ExerciseModel {
  Color color;
  String title;
  String image;

  ExerciseModel(
      {required this.title, required this.color, required this.image});

  static get length => models.length;
  static ExerciseModel exerciseModel(int index) {
    return models[index];
  }

  static List<ExerciseModel> models = [
    ExerciseModel(
        title: 'Relaxation',
        color: ColorManager.lightPurple,
        image: 'assets/images/relaxation.png'),
    ExerciseModel(
        title: 'Meditation',
        color: ColorManager.lightPinkColor,
        image: 'assets/images/meditation.png'),
    ExerciseModel(
        title: 'Breathing',
        color: ColorManager.lightOrange,
        image: 'assets/images/breath.png'),
    ExerciseModel(
        title: 'Yoga',
        color: ColorManager.lightBlue,
        image: 'assets/images/yoga.png'),
  ];
}
