import 'package:flutter/material.dart';
import 'package:frema/atoms/project-card.dart';
import 'package:frema/composable/side-drawer.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Project List'),
        shadowColor: Theme.of(context).colorScheme.shadow,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: const <Widget>[
            ProjectCard(),
            ProjectCard(),
          ],
        ),
      ),
    );
  }
}
