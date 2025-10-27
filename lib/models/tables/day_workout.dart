import 'package:better_life/models/tables/day.dart';
import 'workout.dart';
import 'package:drift/drift.dart';

class DayWorkout extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get dayId => integer().references(Day, #id)();
  IntColumn get workoutId => integer().references(Workout, #id)();
}
