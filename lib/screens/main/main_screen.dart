import 'package:flutter/material.dart';
import 'package:sudip_portfolio/responsive.dart';

import '../../constants.dart';
import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu))),
            ),
      drawer: SideMenu(),
      body: Center(
          child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
          SizedBox(width: defaultPadding),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
                child: Column(
              children: [
                ...children,
                // Our Footer
              ],
            )),
          ),
        ]),
      )),
    );
  }
}
