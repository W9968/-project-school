import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final int selectedIndex;

  const SideDrawer({super.key, required this.selectedIndex});

  static List<DrawerItems> items = const <DrawerItems>[
    DrawerItems('Dashboard', Icon(Icons.dashboard_customize_rounded)),
    DrawerItems('Projects', Icon(Icons.folder_rounded)),
    DrawerItems('Tasks', Icon(Icons.task_rounded)),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        selectedIndex: selectedIndex,
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
              backgroundColor: Theme.of(context).colorScheme.error,
            );
          }),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}

class DrawerItems {
  const DrawerItems(this.title, this.icon);

  final String title;
  final Widget icon;
}
