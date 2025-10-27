import 'package:drift/drift.dart';

@DataClassName('WorkoutEntry')
class Workout extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get weight => real()();
  RealColumn get workoutWeight => real()();
  IntColumn get reps => integer()();
  IntColumn get sets => integer()();
  TextColumn get name => text()();
  IntColumn get intensity => integer()();
}
