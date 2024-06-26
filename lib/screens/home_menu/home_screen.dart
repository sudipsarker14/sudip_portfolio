import 'package:flutter/material.dart';
import 'package:sudip_portfolio/screens/main/main_screen.dart';
import 'Recommendations.dart';
import 'home_banner.dart';
import 'my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        //HighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}
