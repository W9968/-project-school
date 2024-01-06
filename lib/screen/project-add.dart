import 'package:flutter/material.dart';
import 'package:frema/atoms/drop-down.dart';
import 'package:frema/atoms/input.dart';
import 'package:frema/main.dart';
import 'package:frema/models/freelance.dart';
import 'package:frema/screen/login.dart';
import 'package:frema/screen/projects.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProdjectAdd extends StatefulWidget {
  final Freelance? freelance;

  const ProdjectAdd({super.key, this.freelance});

  @override
  State<ProdjectAdd> createState() => _ProdjectAddState();
}

class _ProdjectAddState extends State<ProdjectAdd> {
  String _ownerID = "";

  final key = GlobalKey<FormState>();
  Freelance project = Freelance();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();
  final TextEditingController clientNameController = TextEditingController();
  final TextEditingController stackController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    if (widget.freelance != null) {
      project = widget.freelance!;
      titleController.text = project.getTitle;
      priceController.text = project.getPrice;
      summaryController.text = project.getSubTitle;
      clientNameController.text = project.getClientName;
      stackController.text = project.getStack;
      descriptionController.text = project.getDescription;
      startDateController.text = project.getStartDate;
      endDateController.text = project.getEndDate;
    }
  }

  Future<void> getCurrentUser() async {
    final User? user = supabase.auth.currentUser;
    if (user != null) {
      setState(() {
        _ownerID = user.id;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }
  }

  Future<void> _deleteRecord() async {
    await supabase
        .from('datatable_project')
        .delete()
        .match({'id': project.id}).then((value) {
      if (value == null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Project(),
          ),
        );
      }
    });
  }

Future<void> _updateRecord() async {
    // Check if any values have changed
    await supabase.from('datatable_project').update({
      'title': titleController.text,
      'subTitle': summaryController.text,
      'status': project.getStatus,
      'startDate': startDateController.text,
      'endDate': endDateController.text,
      'phase': project.getPhase,
      'stack': stackController.text,
      'clientName': clientNameController.text,
      'description': descriptionController.text,
      'price': priceController.text,
      'owner_id': _ownerID
    }).match({'id': project.id}).then((value) {
      if (value == null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Project(),
          ),
        );
      }
    });
  }


  Future<void> _createNewRecord() async {
    await supabase.from('datatable_project').insert({
      'title': project.getTitle,
      'subTitle': project.getSubTitle,
      'status': project.getStatus,
      'startDate': project.getStartDate,
      'endDate': project.getEndDate,
      'phase': project.getPhase,
      'stack': project.getStack,
      'clientName': project.getClientName,
      'description': project.getDescription,
      'price': project.getPrice,
      'owner_id': _ownerID
    }).then((value) {
      if (value == null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Project(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.getTitle != "" ? project.getTitle : "Add Project"),
        shadowColor: Theme.of(context).colorScheme.shadow,
        actions: <Widget>[
          if (widget.freelance != null)
            IconButton(
              onPressed: _updateRecord,
              icon: Icon(
                Icons.edit_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          if (widget.freelance != null)
            IconButton(
              onPressed: _deleteRecord,
              icon: Icon(
                Icons.delete_outline,
                color: Theme.of(context).colorScheme.error,
              ),
            )
          else
            IconButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  key.currentState!.save();
                  _createNewRecord();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          const Text("Please fill all the required fields"),
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                  );
                }
              },
              icon: Icon(
                Icons.add_box_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Form(
            key: key,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: <Widget>[
                Input(
                  label: 'Title',
                  placeholder: "Type your project title",
                  controller: titleController,
                  validator: (p0) => p0!.isEmpty ? "Title is required" : null,
                  onSaved: (p0) => project.setTitle = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  label: 'Price',
                  keyboardType: TextInputType.number,
                  placeholder: "Type your project price",
                  controller: priceController,
                  validator: (p0) => p0!.isEmpty ? "Price is required" : null,
                  onSaved: (p0) => project.setPrice = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  lines: 2,
                  label: 'Summary',
                  placeholder: "Type your project summary",
                  controller: summaryController,
                  validator: (p0) => p0!.isEmpty ? "Summary is required" : null,
                  onSaved: (p0) => project.setSubTitle = p0!,
                ),
                const SizedBox(height: 16.0),
                DropDown(
                  label: 'Phases',
                  items: phases,
                  initialValue: phases[project.getPhase],
                  onChanged: (String? value) {
                    setState(() {
                      project.setPhase = phases.indexOf(value!);
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                DropDown(
                  label: 'Status',
                  items: list,
                  initialValue: project.getStatus,
                  onChanged: (String? value) {
                    setState(() {
                      project.setStatus = value!;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                Input(
                  keyboardType: TextInputType.datetime,
                  label: 'Start Date',
                  placeholder: "Type your project start date",
                  controller: startDateController,
                  validator: (p0) =>
                      p0!.isEmpty ? "Start date is required" : null,
                  onSaved: (p0) => project.setStartDate = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  keyboardType: TextInputType.datetime,
                  label: 'End Date',
                  placeholder: "Type your project end date",
                  controller: endDateController,
                  validator: (p0) =>
                      p0!.isEmpty ? "End date is required" : null,
                  onSaved: (p0) => project.setEndDate = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  label: 'Client Name',
                  placeholder: "Type your client name",
                  controller: clientNameController,
                  validator: (p0) =>
                      p0!.isEmpty ? "Client name is required" : null,
                  onSaved: (p0) => project.setClientName = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  label: 'Tech Stack Used',
                  placeholder: "Type your tech stack",
                  controller: stackController,
                  validator: (p0) =>
                      p0!.isEmpty ? "Tech stack is required" : null,
                  onSaved: (p0) => project.setStack = p0!,
                ),
                const SizedBox(height: 16.0),
                Input(
                  lines: 5,
                  label: 'Description',
                  placeholder: "Project description",
                  controller: descriptionController,
                  validator: (p0) =>
                      p0!.isEmpty ? "Description is required" : null,
                  onSaved: (p0) => project.setDescription = p0!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const List<String> list = <String>[
  'preparing',
  'active',
  'inactive',
  'completed',
  'onHold'
];

const List<String> phases = <String>[
  'Receiving files',
  'Requirements Analysis',
  'Conception',
  'Planning',
  'Design',
  'Development',
  'Testing',
  'Deployment',
  'Maintenance'
];
