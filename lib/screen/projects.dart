import 'package:frema/main.dart';
import 'package:flutter/material.dart';
import 'package:frema/atoms/project-card.dart';
import 'package:frema/atoms/project-floating-button.dart';
import 'package:frema/composable/side-drawer.dart';
import 'package:frema/models/freelance.dart';
import 'package:frema/screen/login.dart';
import 'package:frema/screen/project-add.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  late Future<List<Freelance>> _projectsFuture;

  @override
  void initState() {
    super.initState();
    _projectsFuture = _queryData();
  }

  Future<List<Freelance>> _queryData() async {
    List<Freelance> projects = [];

    final User? user = supabase.auth.currentUser;

    if (user != null) {
      final List<Map<String, dynamic>> rows = await supabase
          .from('datatable_project')
          .select('*')
          .match({'owner_id': user.id}).order('id', ascending: false);
      for (var element in rows) {
        projects.add(Freelance.fromMap(element));
      }
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }

    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Project List'),
        shadowColor: Theme.of(context).colorScheme.shadow,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: const FloatingButton(),
      body: RefreshIndicator(
        onRefresh: () {
          setState(() {
            _projectsFuture = _queryData();
          });
          return _projectsFuture;
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder<List<Freelance>>(
              future: _projectsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  List<Freelance> projects = snapshot.data ?? [];
                  return ListView.builder(
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      Freelance project = projects[index];
                      return ProjectCard(
                        cardTitle: project.getTitle,
                        cardSubtitle: project.getSubTitle,
                        cardStatus: project.getStatus,
                        startDate: DateTime.parse(project.getStartDate),
                        endDate: DateTime.parse(project.getEndDate),
                        stack: project.getStack,
                        phase: project.getPhase,
                        price: project.getPrice,
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProdjectAdd(freelance: project)),
                          )
                        },
                      );
                    },
                  );
                }
              }),
        ),
      ),
    );
  }
}
