
import 'package:flutter/material.dart';

enum CategoryGroup { basic, daily, fun, fantasy }

class RandomCategory {
  final String key;
  final String title;
  final IconData icon;
  final CategoryGroup group;
  final WidgetBuilder pageBuilder;

  const RandomCategory({
    required this.key,
    required this.title,
    required this.icon,
    required this.group,
    required this.pageBuilder,
  });
}
