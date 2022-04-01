import 'package:flutter/material.dart';

class Items {
  String title;
  DateTime dateTime;
  TimeOfDay timeOfDay;
  String description;

  Items({
    required this.title,
    required this.dateTime,
    required this.timeOfDay,
    required this.description,
  });
}
