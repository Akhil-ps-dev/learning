import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class Students {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;

  Students(@required this.name, @required this.age);
}

//TODO do for creating adapter
//!  flutter packages pub run build_runner watch --use-polling-watcher --delete-conflicting-outputs