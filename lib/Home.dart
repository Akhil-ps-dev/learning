import 'package:flutter/material.dart';
import 'package:sample_5/widgets/add_studnet_widget.dart';

import 'widgets/list_student_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [AddStudentForm(), Expanded(child: ListStudentList())],
        ),
      ),
    );
  }
}
