import 'package:flutter/widgets.dart';

import '../../model/data_model.dart';

//first array should be created for storing name and age

ValueNotifier<List<Students>> studentsListNotifier = ValueNotifier([]);

void addStudents(Students value) {
  studentsListNotifier.value.add(value);
  print(value);
}
