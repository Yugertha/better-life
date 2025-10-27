import 'package:better_life/models/tables/calories.dart';
import 'package:better_life/models/tables/day_calories.dart';
import 'package:better_life/models/tables/workout.dart';
import 'package:better_life/models/tables/day.dart';
import 'package:better_life/models/tables/day_workout.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:better_life/models/dao/calories_dao.dart';
import 'package:better_life/models/dao/workout_dao.dart';
import 'package:better_life/models/dao/day_dao.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Workout, Calories, Day, DayCalories, DayWorkout],
  daos: [CaloriesDao, WorkoutDao, DayDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: "my_database",
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
