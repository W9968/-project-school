import 'dart:convert';

class Freelance {
  int? id;
  String title;
  String subTitle;

  int phase;
  String status;

  String startDate;
  String endDate;
  
  String clientName;

  String stack;
  String description;

  Freelance({
    this.id,
    this.title = "",
    this.subTitle = "",
    this.status = "preparing",
    this.startDate = "",
    this.endDate = "",
    this.phase = 0,
    this.stack = "",
    this.clientName = "",
    this.description = "",
  });

  // Getters and setters

  String get getTitle => title;
  set setTitle(String title) => this.title = title;

  String get getSubTitle => subTitle;
  set setSubTitle(String subTitle) => this.subTitle = subTitle;

  String get getStatus => status;
  set setStatus(String status) => this.status = status;

  String get getStartDate => startDate;
  set setStartDate(String startDate) => this.startDate = startDate;

  String get getEndDate => endDate;
  set setEndDate(String endDate) => this.endDate = endDate;

  int get getPhase => phase;
  set setPhase(int phase) => this.phase = phase;

  String get getStack => stack;
  set setStack(String stack) => this.stack = stack;

  String get getClientName => clientName;
  set setClientName(String clientName) => this.clientName = clientName;

  String get getDescription => description;
  set setDescription(String description) => this.description = description;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'subTitle': subTitle,
      'status': status, // Convert status to string
      'startDate': startDate,
      'endDate': endDate,
      'phase': phase,
      'stack': stack,
      'clientName': clientName,
      'description': description,
    };
  }

  factory Freelance.fromMap(Map<String, dynamic> map) {
    return Freelance(
      id: map['id'] as int,
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      status: map['status'] as String,
      startDate: map['startDate'] as String,
      endDate: map['endDate'] as String,
      phase: map['phase'] as int,
      stack: map['stack'] as String,
      clientName: map['clientName'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Freelance.fromJson(String source) =>
      Freelance.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Freelance(title: $title, subTitle: $subTitle, status: $status, startDate: $startDate, endDate: $endDate, phase: $phase, stack: $stack, clientName: $clientName)';
  }
}

enum CardStatus { preparing, active, inactive, completed, onHold }
