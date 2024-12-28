import 'package:flutter/material.dart';
import 'package:moody/theme/color_manager.dart';

class TitleBar extends StatelessWidget {
  final String title1;
  final String title2;
  const TitleBar({super.key,required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title1, style: Theme.of(context).textTheme.bodyLarge),
        const Spacer(),
        Text(title2, style: Theme.of(context).textTheme.displayMedium),
        const Icon(
          Icons.keyboard_arrow_right,
          color: ColorManager.greenColor,
        )
      ],
    );
  }
}
