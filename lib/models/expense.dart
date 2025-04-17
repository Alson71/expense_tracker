import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
const uuid = Uuid();

final formatter = DateFormat.yMd();

enum Category {FOOD, TRAVEL, LEISURE, WORK}

const categoryIcons = {
  Category.FOOD: Icons.lunch_dining,
  Category.TRAVEL: Icons.flight_takeoff,
  Category.LEISURE: Icons.movie,
  Category.WORK: Icons.work
};

class Expense{
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; // leisure Expense(category : 'leisure') 

  String get formattedDate{
    return formatter.format(date);
  }
}