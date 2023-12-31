import 'package:flutter/material.dart';
import 'package:frema/composable/side-drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard'),
        shadowColor: Theme.of(context).colorScheme.shadow,
      ),
    );
  }
}
