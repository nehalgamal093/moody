import 'package:flutter/material.dart';
import '../../theme/color_manager.dart';

class MoodItem extends StatelessWidget {
  final String image;
  final String title;
  const MoodItem({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorManager.grayOneColor,
          child: Image.asset(image),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
