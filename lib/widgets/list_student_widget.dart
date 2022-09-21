import 'package:flutter/material.dart';
import 'package:sample_5/db/functions/db_functions.dart';
import 'package:sample_5/model/data_model.dart';

class ListStudentList extends StatelessWidget {
  const ListStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentsListNotifier,
        builder: (BuildContext ctx, List<Students> studentlist, Widget? child) {
          return ListView.separated(
            separatorBuilder: ((ctx, index) {
              return Divider();
            }),
            itemBuilder: ((ctx, index) {
              final data = studentlist[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
              );
            }),
            itemCount: studentlist.length,
          );
        });
  }
}
