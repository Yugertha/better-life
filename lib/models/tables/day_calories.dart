import 'package:better_life/models/tables/calories.dart';
import 'package:better_life/models/tables/day.dart';
import 'package:drift/drift.dart';

class DayCalories extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get dayId => integer().references(Day, #id)();
  IntColumn get caloriesId => integer().references(Calories, #id)();
}
