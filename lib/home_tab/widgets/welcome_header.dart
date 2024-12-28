import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hello, ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium,
              ),
              TextSpan(
                text: 'Sara Rose',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge,
              ),
            ],
          ),
        ),
        const SizedBox(height:12),
        Text('How are you feeling today ?',style:  Theme.of(context)
            .textTheme
            .titleMedium,)
      ],
    );
  }
}
