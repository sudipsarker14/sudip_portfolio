import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
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
