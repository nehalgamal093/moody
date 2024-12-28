import 'package:flutter/material.dart';

import '../../theme/color_manager.dart';

class PositiveVibesItem extends StatelessWidget {
  const PositiveVibesItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width*.9,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color:ColorManager.lightGreenColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width:size.width*.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  softWrap: true,
                  'Boost your mood with positive vibes',

                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: ColorManager.blackColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/play.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '10 mins',
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.asset('assets/images/walking_dog.png')
        ],
      ),
    );
  }
}
