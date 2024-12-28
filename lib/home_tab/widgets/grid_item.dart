import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String image;
  final Color color;
  final String title;
  const GridItem(
      {super.key,
      required this.image,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: color),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
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
