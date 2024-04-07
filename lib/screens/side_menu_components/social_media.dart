import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0xFF24242E),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () =>
                launch('https://www.linkedin.com/in/sudipsarker1411/'),
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          /*IconButton(
            onPressed: () => launch('https://github.com/sudipsarker14.com'),
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),*/
          InkWell(
              child: IconButton(
            onPressed: () => launch('https://github.com/sudipsarker14'),
            icon: SvgPicture.asset("assets/icons/github.svg"),
          )),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/twitter.svg"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
