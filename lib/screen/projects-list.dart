import 'package:flutter/material.dart';
import 'package:frema/atoms/project-card.dart';
import 'package:frema/composable/side-drawer.dart';

class ProjectListMain extends StatefulWidget {
  const ProjectListMain({super.key});

  @override
  State<ProjectListMain> createState() => _ProjectListMainState();
}

class _ProjectListMainState extends State<ProjectListMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(selectedIndex: 1),
      appBar: AppBar(
        title: const Text('Project List'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [ProjectCard()]),
      ),
    );
  }
}