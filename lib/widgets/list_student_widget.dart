import 'package:flutter/material.dart';

class ListStudentList extends StatelessWidget {
  const ListStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: ((context, index) {
        return Divider();
      }),
      itemCount: 50,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text('Student Name'),
          subtitle: Text('Student Age'),
        );
      }),
    );
  }
}
