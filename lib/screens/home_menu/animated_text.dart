import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Theme.of(context).textTheme.titleMedium!,
        maxLines: 1,
        child: Row(
          children: [
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            Text("I build "),
            Responsive.isMobile(context)
                ? Expanded(child: AnimatedText())
                : AnimatedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          ],
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive web and mobile app.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "complete e-Commerce app",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Chat app with dark and light theme.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
