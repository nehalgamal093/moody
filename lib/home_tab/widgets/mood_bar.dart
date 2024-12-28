import 'package:flutter/material.dart';
import 'package:moody/home_tab/widgets/mood_item.dart';


class MoodBar extends StatelessWidget {
  const MoodBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MoodItem(
          image: 'assets/images/love.png',
          title: 'Love',
        ),
        SizedBox(width: 30,),
        MoodItem(
          image: 'assets/images/cool.png',
          title: 'Cool',
        ),
        SizedBox(width: 30,),
        MoodItem(
          image: 'assets/images/happy.png',
          title: 'Happy',
        ),
        SizedBox(width: 30,),
        MoodItem(
          image: 'assets/images/sad.png',
          title: 'Sad',
        ),
      ],
    );
  }
}
