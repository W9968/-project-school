import 'package:frema/main.dart';
import 'package:flutter/material.dart';
import 'package:frema/atoms/drawer-header.dart';
import 'package:frema/atoms/drawer-navigation-items.dart';
import 'package:frema/atoms/drawer-theme-switcher.dart';
import 'package:frema/models/auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  Auth currentUser = Auth(
    id: 1,
    userid: "OBJECT(id)",
    username: "username",
    email: "Email",
    avatar:
        "https://buzzly.info/upload/1769/5705d4c005efeff0ce92ec1ec57ac130.jpg",
  );

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  Future<void> getCurrentUser() async {
    try {
      final User? user = supabase.auth.currentUser;
      if (user != null) {
        final response = await supabase
            .from('datatable_user')
            .select()
            .eq('userid', user.id)
            .single();

        setState(() {
          currentUser = Auth.fromMap(response);
        });
      } else {
        throw Exception('No user found');
      }
    } on AuthException catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 375.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child: Container(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            children: <Widget>[
              DrawerHeaderCustom(
                email: currentUser.email,
                username: "@${currentUser.username}",
                avatar: currentUser.avatar,
              ),
              const Divider(),
              const DrawerNavigationItems(),
              const Divider(),
              const ThemeSwitcher()
            ],
          ),
        ));
  }
}
