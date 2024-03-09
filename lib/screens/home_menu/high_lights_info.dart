import 'package:flutter/material.dart';
import 'package:sudip_portfolio/responsive.dart';

import '../../constants.dart';
import 'animated_counter.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 119, text: "k+"),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 40, text: "+"),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 119, text: "k+"),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 40, text: "+"),
                      label: "Videos",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(value: 119, text: "k+"),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 40, text: "+"),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 13, text: "K+"),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
