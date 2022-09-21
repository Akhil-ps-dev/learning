import 'package:flutter/material.dart';
import 'package:sample_5/widgets/add_studnet_widget.dart';

import 'db/functions/db_functions.dart';
import 'widgets/list_student_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    geAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentForm(),
            Expanded(
              child: ListStudentList(),
            )
          ],
        ),
      ),
    );
  }
}
