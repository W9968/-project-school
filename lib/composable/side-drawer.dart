import 'package:flutter/material.dart';
import 'package:frema/atoms/drawer-header.dart';
import 'package:frema/atoms/drawer-navigation-items.dart';
import 'package:frema/atoms/drawer-theme-switcher.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 375.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child: Container(
          padding: const EdgeInsets.only(top: 32.0),
          child: const Column(
            children: <Widget>[
              DrawerHaeaderCust(),
              Divider(),
              DrawerNavigationItems(),
              Divider(),
              ThemeSwitcher()
        ],
          ),
        )
    );
  }
}
