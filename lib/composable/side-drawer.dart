import 'package:flutter/material.dart';
import 'package:frema/screen/dashboard.dart';
import 'package:frema/screen/projects.dart';

class SideDrawer extends StatefulWidget {
  final int screenIndex;

  const SideDrawer({
    Key? key,
    required this.screenIndex,
  }) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {


  static List<DrawerItems> items = const <DrawerItems>[
    DrawerItems(
        'Dashboard', Icon(Icons.dashboard_customize_rounded), Dashboard()),
    DrawerItems('Projects', Icon(Icons.folder_rounded), Project()),
  ];


  void handleScreenChanged(int selectedScreen) {
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => items[selectedScreen].onTap,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          NavigationDrawer(
            onDestinationSelected: handleScreenChanged,
            selectedIndex: widget.screenIndex,
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  'Context',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ...items.map((DrawerItems el) {
                return NavigationDrawerDestination(
                  label: Text(el.title),
                  icon: el.icon,
                );
              }),
              const Padding(
                padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
                child: Divider(),
              ),
            ],
          ),
          // Your custom drawer content can go here if needed
        ],
      ),
    );
  }
}

class DrawerItems {
  const DrawerItems(this.title, this.icon, this.onTap);

  final String title;
  final Widget icon;
  final Widget onTap;
}
