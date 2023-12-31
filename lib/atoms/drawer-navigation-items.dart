import 'package:flutter/material.dart';
import 'package:frema/screen/dashboard.dart';
import 'package:frema/screen/projects.dart';

class DrawerNavigationItems extends StatelessWidget {
  const DrawerNavigationItems({super.key});

  static List<DrawerItems> items = const <DrawerItems>[
    DrawerItems(
        'Dashboard', Icon(Icons.dashboard_customize_rounded), Dashboard()),
    DrawerItems('Projects', Icon(Icons.folder_rounded), Project()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Items',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSecondaryContainer)),
            const Padding(padding: EdgeInsets.all(8.0)),
            ...items.map(
              (e) => ListTile(
                trailing: e.icon,
                title: Text(e.title),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => e.onTap));
                },
              ),
            )
          ],
        ));
  }
}

class DrawerItems {
  const DrawerItems(this.title, this.icon, this.onTap);

  final String title;
  final Widget icon;
  final Widget onTap;
}
