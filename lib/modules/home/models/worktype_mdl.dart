import 'dart:convert';

class WorktypeModel {
  final int id;
  final String? key;
  final String? value;
  WorktypeModel({
    required this.id,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'key': key,
      'value': value,
    };
  }

  factory WorktypeModel.fromMap(Map<String, dynamic> map) {
    return WorktypeModel(
      id: map['id']?.toInt() ?? 0,
      key: map['key'] ?? '',
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WorktypeModel.fromJson(String source) => WorktypeModel.fromMap(json.decode(source));
}

final List<WorktypeModel> dataWorktype = [
  WorktypeModel(
    id: 1,
    key: 'work1_start',
    value: 'Shift-1 Morning Start',
  ),
  WorktypeModel(
    id: 2,
    key: 'work1_end',
    value: 'Shift-1 Morning End',
  ),
  WorktypeModel(
    id: 3,
    key: 'work2_start',
    value: 'Shift-2 Morning Start',
  ),
  WorktypeModel(
    id: 4,
    key: 'work2_end',
    value: 'Shift-2 Morning End',
  ),
  WorktypeModel(
    id: 5,
    key: 'absence',
    value: 'Not Present',
  ),
];

final List<dynamic> dataWorktype2 = [
  {'id': 1,'key': 'work1_start','value': 'Not Present1'},
  {'id': 2,'key': 'work1_end','value': 'Not Present2'},
  {'id': 3,'key': 'work1_start','value': 'Not Present3'},
  {'id': 4,'key': 'work2_end','value': 'Not Present4'},
  {'id': 5,'key': 'absence','value': 'Not Present5'},
];

final List<dynamic> dataWorktype3 = ['1', '2', '3'];