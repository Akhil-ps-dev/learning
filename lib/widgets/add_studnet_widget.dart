import 'package:flutter/material.dart';
import 'package:sample_5/model/data_model.dart';

import '../db/functions/db_functions.dart';

class AddStudentForm extends StatelessWidget {
  final _nameControl = TextEditingController();
  final _ageControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameControl,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your name',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _ageControl,
            decoration: InputDecoration(
              labelText: 'Age',
              hintText: 'Enter your Age',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                buttonClicked();
              },
              child: Text('Add Student'))
        ],
      ),
    );
  }

  Future<void> buttonClicked() async {
    final _name = _nameControl.text;
    final _age = _ageControl.text;
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }

    addStudents(Students(_name, _age));
  }
}
