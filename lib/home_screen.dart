import 'package:flutter/material.dart';

class MYhome extends StatelessWidget {
  final _list = [
    'apple',
    'banana',
    'orange',
    'grape',
    'watermelon',
    'mango',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
              items: _list.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
              })
        ],
      )),
    );
  }
}
