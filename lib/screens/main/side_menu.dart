import 'package:flutter/material.dart';
import 'package:sudip_portfolio/screens/side_menu_components/skills.dart';

import '../../constants.dart';

import '../side_menu_components/area_info.dart';
import '../side_menu_components/coding.dart';
import '../side_menu_components/download_cv.dart';
import '../side_menu_components/knowledges.dart';
import '../side_menu_components/my_info.dart';
import '../side_menu_components/social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: "Residence", text: "Bangladesh"),
                  AreaInfoText(title: "City", text: "Dhaka"),
                  AreaInfoText(
                      title: "E-mail", text: "sudipsarker2016@gmail.com"),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  CV(),
                  SocialMedia()
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
