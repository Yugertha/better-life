import 'package:better_life/models/database.dart';
import 'package:better_life/models/tables/calories.dart';
import 'package:drift/drift.dart';

part 'calories_dao.g.dart';

@DriftAccessor(tables: [Calories])
class CaloriesDao extends DatabaseAccessor<AppDatabase>
    with _$CaloriesDaoMixin {
  CaloriesDao(super.db);

  //insert into the database
  Future<int> insertCalories(CaloriesCompanion entry) =>
      into(calories).insert(entry);

  //get all the the database once
  Future<List<Calorie>> getCalories() => select(calories).get();

  //get a continious stream of the list of the database so when it's updated the list will update with it
  Stream<List<Calorie>> streamCalories() => select(calories).watch();

  Future<Calorie?> getCaloriesById(int id) =>
      (select(calories)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<bool> updateCalories(CaloriesCompanion entry) =>
      update(calories).replace(entry);

  //delete an entry by it's identifier
  Future<int> deleteCalories(int id) =>
      (delete(calories)..where((t) => t.id.equals(id))).go();
}
