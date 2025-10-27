import 'package:drift/drift.dart';

@DataClassName('DayEntry')
class Day extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get steps => integer()();
  DateTimeColumn get dayTime => dateTime()();
}
