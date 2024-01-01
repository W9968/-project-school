import 'package:flutter/material.dart';
import 'package:frema/atoms/project-card.dart';
import 'package:frema/atoms/project-floating-button.dart';
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
      floatingActionButton: const FloatingButton(),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            ProjectCard(
              cardTitle: 'Project 1',
              cardSubtitle: 'Subtitle 1',
              cardStatus: CardStatus.active,
              startDate: DateTime(2023, 1, 1),
              endDate: DateTime(2023, 2, 5),
              phase: 1,
              stack: 'React, NodeJS, MongoDB',
            ),
            ProjectCard(
              cardTitle: 'Project 2',
              cardSubtitle: 'Subtitle 2',
              cardStatus: CardStatus.onHold,
              startDate: DateTime(2023, 1, 1),
              endDate: DateTime(2024, 2, 5),
              phase: 2,
              stack: 'React Native, Laravel, TailwindCSS',
            ),
            ProjectCard(
              cardTitle: 'Project 3',
              cardSubtitle: 'Subtitle 3',
              cardStatus: CardStatus.inactive,
              startDate: DateTime(2023, 1, 1),
              endDate: DateTime(2023, 6, 5),
              phase: 3,
              stack: 'Flutter, Firebase, Google Cloud',
            ),
            ProjectCard(
              cardTitle: 'Project 4',
              cardSubtitle: 'Subtitle 4',
              cardStatus: CardStatus.completed,
              startDate: DateTime(2023, 1, 1),
              endDate: DateTime(2023, 2, 29),
              phase: 4,
              stack: 'React, NodeJS, MongoDB',
            ),
            ProjectCard(
              cardTitle: 'Project 5',
              cardSubtitle: 'Subtitle 5',
              cardStatus: CardStatus.preparing,
              startDate: DateTime(2023, 1, 1),
              endDate: DateTime(2023, 1, 15),
              phase: 5,
              stack: 'React Native, Laravel, TailwindCSS',
            ),
          ],
        ),
      ),
    );
  }
}
