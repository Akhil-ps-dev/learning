import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../model/data_model.dart';

//first array should be created for storing name and age

ValueNotifier<List<Students>> studentsListNotifier = ValueNotifier([]);

void addStudents(Students value) async {
  // studentsListNotifier.value.add(value);

  final studentDB = await Hive.openBox<Students>('studentdb');
  studentDB.add(value);
  studentsListNotifier.notifyListeners();
}
