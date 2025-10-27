import 'package:drift/drift.dart';

@DataClassName('Calorie')
class Calories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get calorieAmount => real()();
}
