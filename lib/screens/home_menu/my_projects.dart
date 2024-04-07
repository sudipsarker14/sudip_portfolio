import 'package:flutter/material.dart';
import 'package:sudip_portfolio/responsive.dart';
import 'package:sudip_portfolio/screens/home_menu/project_card.dart';

import '../../constants.dart';
import '../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          Responsive(
            mobile: ProjectGridView(crossAxisCount: 1, childAspectRatio: 1.7),
            mobileLarge: ProjectGridView(
              crossAxisCount: 2,
            ),
            desktop: ProjectGridView(),
            tablet: ProjectGridView(childAspectRatio: 1.1),
          ),
        ],
      ),
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
