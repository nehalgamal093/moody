import 'package:flutter/material.dart';
import 'package:moody/home_tab/widgets/grid_item.dart';
import '../../model/exercise_model.dart';


class ExerciseGrid extends StatelessWidget {
  const ExerciseGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .20,
      child: GridView.builder(
          itemCount: ExerciseModel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 24,
              mainAxisExtent: 70),
          itemBuilder: (context, index) {
            return  GridItem(
             title: ExerciseModel.exerciseModel(index).title,
              image: ExerciseModel.exerciseModel(index).image,
              color: ExerciseModel.exerciseModel(index).color,
            );
          }),
    );
  }
}
