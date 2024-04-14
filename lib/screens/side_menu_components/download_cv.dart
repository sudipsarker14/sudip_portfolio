import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class CV extends StatelessWidget {
  const CV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => launch(
          'https://drive.google.com/file/d/19gItrz7nsIwcuT7oi-U9UjTq_ib-XQRd/view?usp=sharing'),
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "Download CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
            SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg"),
          ],
        ),
      ),
    );
  }
}
