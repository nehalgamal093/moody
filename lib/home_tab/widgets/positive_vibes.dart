import 'package:flutter/material.dart';
import 'package:moody/home_tab/widgets/positive_vibes_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PositiveVibes extends StatelessWidget {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  PositiveVibes({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * .2,
          child: PageView.builder(
              controller: controller,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const PositiveVibesItem();
              }),
        ),
        const SizedBox(
          height: 12,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: 3,
          axisDirection: Axis.horizontal,
          effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Color(0xffD9D9D9),
              activeDotColor: Color(0xff98A2B3)),
        )
      ],
    );
  }
}
