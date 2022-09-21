import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../model/data_model.dart';

//first array should be created for storing name and age

ValueNotifier<List<Students>> studentsListNotifier = ValueNotifier([]);

void addStudents(Students value) async {
  final studentDB = await Hive.openBox<Students>('studentdb');
  final _id = await studentDB.add(value);
  value.id = _id;

  geAllStudents();
}

Future<void> geAllStudents() async {
  final studentDB = await Hive.openBox<Students>('studentdb');
  studentsListNotifier.value.clear();
  studentsListNotifier.value.addAll(studentDB.values);
  studentsListNotifier.notifyListeners();
}

Future<void> deleteStudents(int id) async {
  final studentDB = await Hive.openBox<Students>('studentdb');
  await studentDB.delete(id);
  geAllStudents();
}
