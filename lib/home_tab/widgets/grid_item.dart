import 'package:flutter/material.dart';

import '../../model/exercise_model.dart';

class GridItem extends StatelessWidget {
  final ExerciseModel exerciseModel;
  const GridItem(
      {super.key,
      required this.exerciseModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: exerciseModel.color),
      child: Row(
        children: [
          Image.asset(exerciseModel.image),
          const SizedBox(
            width: 12,
          ),
          Text(
            exerciseModel.title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
