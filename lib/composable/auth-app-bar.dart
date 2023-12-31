import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Icon(size: 21.0, Icons.login_rounded),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text("Login",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w500)),
                ]),
              ),
              Tab(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Icon(size: 21.0, Icons.person_add_rounded),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text("Register",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w500)),
                ]),
              ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
