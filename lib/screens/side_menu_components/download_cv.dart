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
          'https://drive.google.com/file/d/1Ja79b3Avte7TlGp4q83Nd61Sys39gHzo/view?usp=drive_link'),
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
