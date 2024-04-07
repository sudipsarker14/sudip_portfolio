import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animated_linear_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "SQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "C++",
        ),
      ],
    );
  }
}
