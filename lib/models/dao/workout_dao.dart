import 'package:better_life/models/database.dart';
import 'package:better_life/models/tables/workout.dart';
import 'package:drift/drift.dart';

part 'workout_dao.g.dart';

@DriftAccessor(tables: [Workout])
class WorkoutDao extends DatabaseAccessor<AppDatabase> with _$WorkoutDaoMixin {
  WorkoutDao(super.db);

  //insert to the database
  Future<int> insertWorkout(WorkoutCompanion entry) =>
      into(workout).insert(entry);

  Future<List<WorkoutEntry>> getWorkouts() => select(workout).get();

  Stream<List<WorkoutEntry>> streamWorkouts() => select(workout).watch();

  Future<bool> updateWorkout(WorkoutCompanion entry) =>
      update(workout).replace(entry);

  Future<WorkoutEntry?> getWorkoutsById(int id) =>
      (select(workout)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> deleteWorkout(int id) =>
      (delete(workout)..where((t) => t.id.equals(id))).go();
}
