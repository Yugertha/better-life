import 'package:better_life/models/tables/day.dart';
import 'package:better_life/models/database.dart';
import 'package:drift/drift.dart';

part 'day_dao.g.dart';

@DriftAccessor(tables: [Day])
class DayDao extends DatabaseAccessor<AppDatabase> with _$DayDaoMixin {
  DayDao(super.db);

  Future<int> insertDay(DayCompanion entry) => into(day).insert(entry);

  Future<List<DayEntry>> getDays() => select(day).get();

  Stream<List<DayEntry>> streamDays() => select(day).watch();

  Future<int> deleteDay(int id) =>
      (delete(day)..where((d) => d.id.equals(id))).go();
}
