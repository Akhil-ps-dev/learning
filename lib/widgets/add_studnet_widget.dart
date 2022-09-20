import 'package:flutter/material.dart';

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
    final name = _nameControl.text;
    final age = _ageControl.text;
    if (name.isEmpty || age.isEmpty) {
      return;
    }
  }
}
