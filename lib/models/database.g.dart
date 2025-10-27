// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WorkoutTable extends Workout
    with TableInfo<$WorkoutTable, WorkoutEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _workoutWeightMeta = const VerificationMeta(
    'workoutWeight',
  );
  @override
  late final GeneratedColumn<double> workoutWeight = GeneratedColumn<double>(
    'workout_weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _repsMeta = const VerificationMeta('reps');
  @override
  late final GeneratedColumn<int> reps = GeneratedColumn<int>(
    'reps',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _setsMeta = const VerificationMeta('sets');
  @override
  late final GeneratedColumn<int> sets = GeneratedColumn<int>(
    'sets',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intensityMeta = const VerificationMeta(
    'intensity',
  );
  @override
  late final GeneratedColumn<int> intensity = GeneratedColumn<int>(
    'intensity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    weight,
    workoutWeight,
    reps,
    sets,
    name,
    intensity,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('workout_weight')) {
      context.handle(
        _workoutWeightMeta,
        workoutWeight.isAcceptableOrUnknown(
          data['workout_weight']!,
          _workoutWeightMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_workoutWeightMeta);
    }
    if (data.containsKey('reps')) {
      context.handle(
        _repsMeta,
        reps.isAcceptableOrUnknown(data['reps']!, _repsMeta),
      );
    } else if (isInserting) {
      context.missing(_repsMeta);
    }
    if (data.containsKey('sets')) {
      context.handle(
        _setsMeta,
        sets.isAcceptableOrUnknown(data['sets']!, _setsMeta),
      );
    } else if (isInserting) {
      context.missing(_setsMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('intensity')) {
      context.handle(
        _intensityMeta,
        intensity.isAcceptableOrUnknown(data['intensity']!, _intensityMeta),
      );
    } else if (isInserting) {
      context.missing(_intensityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      )!,
      workoutWeight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}workout_weight'],
      )!,
      reps: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reps'],
      )!,
      sets: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sets'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      intensity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}intensity'],
      )!,
    );
  }

  @override
  $WorkoutTable createAlias(String alias) {
    return $WorkoutTable(attachedDatabase, alias);
  }
}

class WorkoutEntry extends DataClass implements Insertable<WorkoutEntry> {
  final int id;
  final double weight;
  final double workoutWeight;
  final int reps;
  final int sets;
  final String name;
  final int intensity;
  const WorkoutEntry({
    required this.id,
    required this.weight,
    required this.workoutWeight,
    required this.reps,
    required this.sets,
    required this.name,
    required this.intensity,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['weight'] = Variable<double>(weight);
    map['workout_weight'] = Variable<double>(workoutWeight);
    map['reps'] = Variable<int>(reps);
    map['sets'] = Variable<int>(sets);
    map['name'] = Variable<String>(name);
    map['intensity'] = Variable<int>(intensity);
    return map;
  }

  WorkoutCompanion toCompanion(bool nullToAbsent) {
    return WorkoutCompanion(
      id: Value(id),
      weight: Value(weight),
      workoutWeight: Value(workoutWeight),
      reps: Value(reps),
      sets: Value(sets),
      name: Value(name),
      intensity: Value(intensity),
    );
  }

  factory WorkoutEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutEntry(
      id: serializer.fromJson<int>(json['id']),
      weight: serializer.fromJson<double>(json['weight']),
      workoutWeight: serializer.fromJson<double>(json['workoutWeight']),
      reps: serializer.fromJson<int>(json['reps']),
      sets: serializer.fromJson<int>(json['sets']),
      name: serializer.fromJson<String>(json['name']),
      intensity: serializer.fromJson<int>(json['intensity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'weight': serializer.toJson<double>(weight),
      'workoutWeight': serializer.toJson<double>(workoutWeight),
      'reps': serializer.toJson<int>(reps),
      'sets': serializer.toJson<int>(sets),
      'name': serializer.toJson<String>(name),
      'intensity': serializer.toJson<int>(intensity),
    };
  }

  WorkoutEntry copyWith({
    int? id,
    double? weight,
    double? workoutWeight,
    int? reps,
    int? sets,
    String? name,
    int? intensity,
  }) => WorkoutEntry(
    id: id ?? this.id,
    weight: weight ?? this.weight,
    workoutWeight: workoutWeight ?? this.workoutWeight,
    reps: reps ?? this.reps,
    sets: sets ?? this.sets,
    name: name ?? this.name,
    intensity: intensity ?? this.intensity,
  );
  WorkoutEntry copyWithCompanion(WorkoutCompanion data) {
    return WorkoutEntry(
      id: data.id.present ? data.id.value : this.id,
      weight: data.weight.present ? data.weight.value : this.weight,
      workoutWeight: data.workoutWeight.present
          ? data.workoutWeight.value
          : this.workoutWeight,
      reps: data.reps.present ? data.reps.value : this.reps,
      sets: data.sets.present ? data.sets.value : this.sets,
      name: data.name.present ? data.name.value : this.name,
      intensity: data.intensity.present ? data.intensity.value : this.intensity,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutEntry(')
          ..write('id: $id, ')
          ..write('weight: $weight, ')
          ..write('workoutWeight: $workoutWeight, ')
          ..write('reps: $reps, ')
          ..write('sets: $sets, ')
          ..write('name: $name, ')
          ..write('intensity: $intensity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, weight, workoutWeight, reps, sets, name, intensity);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutEntry &&
          other.id == this.id &&
          other.weight == this.weight &&
          other.workoutWeight == this.workoutWeight &&
          other.reps == this.reps &&
          other.sets == this.sets &&
          other.name == this.name &&
          other.intensity == this.intensity);
}

class WorkoutCompanion extends UpdateCompanion<WorkoutEntry> {
  final Value<int> id;
  final Value<double> weight;
  final Value<double> workoutWeight;
  final Value<int> reps;
  final Value<int> sets;
  final Value<String> name;
  final Value<int> intensity;
  const WorkoutCompanion({
    this.id = const Value.absent(),
    this.weight = const Value.absent(),
    this.workoutWeight = const Value.absent(),
    this.reps = const Value.absent(),
    this.sets = const Value.absent(),
    this.name = const Value.absent(),
    this.intensity = const Value.absent(),
  });
  WorkoutCompanion.insert({
    this.id = const Value.absent(),
    required double weight,
    required double workoutWeight,
    required int reps,
    required int sets,
    required String name,
    required int intensity,
  }) : weight = Value(weight),
       workoutWeight = Value(workoutWeight),
       reps = Value(reps),
       sets = Value(sets),
       name = Value(name),
       intensity = Value(intensity);
  static Insertable<WorkoutEntry> custom({
    Expression<int>? id,
    Expression<double>? weight,
    Expression<double>? workoutWeight,
    Expression<int>? reps,
    Expression<int>? sets,
    Expression<String>? name,
    Expression<int>? intensity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (weight != null) 'weight': weight,
      if (workoutWeight != null) 'workout_weight': workoutWeight,
      if (reps != null) 'reps': reps,
      if (sets != null) 'sets': sets,
      if (name != null) 'name': name,
      if (intensity != null) 'intensity': intensity,
    });
  }

  WorkoutCompanion copyWith({
    Value<int>? id,
    Value<double>? weight,
    Value<double>? workoutWeight,
    Value<int>? reps,
    Value<int>? sets,
    Value<String>? name,
    Value<int>? intensity,
  }) {
    return WorkoutCompanion(
      id: id ?? this.id,
      weight: weight ?? this.weight,
      workoutWeight: workoutWeight ?? this.workoutWeight,
      reps: reps ?? this.reps,
      sets: sets ?? this.sets,
      name: name ?? this.name,
      intensity: intensity ?? this.intensity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (workoutWeight.present) {
      map['workout_weight'] = Variable<double>(workoutWeight.value);
    }
    if (reps.present) {
      map['reps'] = Variable<int>(reps.value);
    }
    if (sets.present) {
      map['sets'] = Variable<int>(sets.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (intensity.present) {
      map['intensity'] = Variable<int>(intensity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutCompanion(')
          ..write('id: $id, ')
          ..write('weight: $weight, ')
          ..write('workoutWeight: $workoutWeight, ')
          ..write('reps: $reps, ')
          ..write('sets: $sets, ')
          ..write('name: $name, ')
          ..write('intensity: $intensity')
          ..write(')'))
        .toString();
  }
}

class $CaloriesTable extends Calories with TableInfo<$CaloriesTable, Calorie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CaloriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _calorieAmountMeta = const VerificationMeta(
    'calorieAmount',
  );
  @override
  late final GeneratedColumn<double> calorieAmount = GeneratedColumn<double>(
    'calorie_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, calorieAmount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'calories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Calorie> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('calorie_amount')) {
      context.handle(
        _calorieAmountMeta,
        calorieAmount.isAcceptableOrUnknown(
          data['calorie_amount']!,
          _calorieAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_calorieAmountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Calorie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Calorie(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      calorieAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calorie_amount'],
      )!,
    );
  }

  @override
  $CaloriesTable createAlias(String alias) {
    return $CaloriesTable(attachedDatabase, alias);
  }
}

class Calorie extends DataClass implements Insertable<Calorie> {
  final int id;
  final String name;
  final double calorieAmount;
  const Calorie({
    required this.id,
    required this.name,
    required this.calorieAmount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['calorie_amount'] = Variable<double>(calorieAmount);
    return map;
  }

  CaloriesCompanion toCompanion(bool nullToAbsent) {
    return CaloriesCompanion(
      id: Value(id),
      name: Value(name),
      calorieAmount: Value(calorieAmount),
    );
  }

  factory Calorie.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Calorie(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      calorieAmount: serializer.fromJson<double>(json['calorieAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'calorieAmount': serializer.toJson<double>(calorieAmount),
    };
  }

  Calorie copyWith({int? id, String? name, double? calorieAmount}) => Calorie(
    id: id ?? this.id,
    name: name ?? this.name,
    calorieAmount: calorieAmount ?? this.calorieAmount,
  );
  Calorie copyWithCompanion(CaloriesCompanion data) {
    return Calorie(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      calorieAmount: data.calorieAmount.present
          ? data.calorieAmount.value
          : this.calorieAmount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Calorie(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('calorieAmount: $calorieAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, calorieAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Calorie &&
          other.id == this.id &&
          other.name == this.name &&
          other.calorieAmount == this.calorieAmount);
}

class CaloriesCompanion extends UpdateCompanion<Calorie> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> calorieAmount;
  const CaloriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.calorieAmount = const Value.absent(),
  });
  CaloriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double calorieAmount,
  }) : name = Value(name),
       calorieAmount = Value(calorieAmount);
  static Insertable<Calorie> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? calorieAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (calorieAmount != null) 'calorie_amount': calorieAmount,
    });
  }

  CaloriesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<double>? calorieAmount,
  }) {
    return CaloriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      calorieAmount: calorieAmount ?? this.calorieAmount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (calorieAmount.present) {
      map['calorie_amount'] = Variable<double>(calorieAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CaloriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('calorieAmount: $calorieAmount')
          ..write(')'))
        .toString();
  }
}

class $DayTable extends Day with TableInfo<$DayTable, DayEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DayTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stepsMeta = const VerificationMeta('steps');
  @override
  late final GeneratedColumn<int> steps = GeneratedColumn<int>(
    'steps',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayTimeMeta = const VerificationMeta(
    'dayTime',
  );
  @override
  late final GeneratedColumn<DateTime> dayTime = GeneratedColumn<DateTime>(
    'day_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, steps, dayTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'day';
  @override
  VerificationContext validateIntegrity(
    Insertable<DayEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('steps')) {
      context.handle(
        _stepsMeta,
        steps.isAcceptableOrUnknown(data['steps']!, _stepsMeta),
      );
    } else if (isInserting) {
      context.missing(_stepsMeta);
    }
    if (data.containsKey('day_time')) {
      context.handle(
        _dayTimeMeta,
        dayTime.isAcceptableOrUnknown(data['day_time']!, _dayTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_dayTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DayEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DayEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      steps: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}steps'],
      )!,
      dayTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}day_time'],
      )!,
    );
  }

  @override
  $DayTable createAlias(String alias) {
    return $DayTable(attachedDatabase, alias);
  }
}

class DayEntry extends DataClass implements Insertable<DayEntry> {
  final int id;
  final int steps;
  final DateTime dayTime;
  const DayEntry({
    required this.id,
    required this.steps,
    required this.dayTime,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['steps'] = Variable<int>(steps);
    map['day_time'] = Variable<DateTime>(dayTime);
    return map;
  }

  DayCompanion toCompanion(bool nullToAbsent) {
    return DayCompanion(
      id: Value(id),
      steps: Value(steps),
      dayTime: Value(dayTime),
    );
  }

  factory DayEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DayEntry(
      id: serializer.fromJson<int>(json['id']),
      steps: serializer.fromJson<int>(json['steps']),
      dayTime: serializer.fromJson<DateTime>(json['dayTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'steps': serializer.toJson<int>(steps),
      'dayTime': serializer.toJson<DateTime>(dayTime),
    };
  }

  DayEntry copyWith({int? id, int? steps, DateTime? dayTime}) => DayEntry(
    id: id ?? this.id,
    steps: steps ?? this.steps,
    dayTime: dayTime ?? this.dayTime,
  );
  DayEntry copyWithCompanion(DayCompanion data) {
    return DayEntry(
      id: data.id.present ? data.id.value : this.id,
      steps: data.steps.present ? data.steps.value : this.steps,
      dayTime: data.dayTime.present ? data.dayTime.value : this.dayTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DayEntry(')
          ..write('id: $id, ')
          ..write('steps: $steps, ')
          ..write('dayTime: $dayTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, steps, dayTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DayEntry &&
          other.id == this.id &&
          other.steps == this.steps &&
          other.dayTime == this.dayTime);
}

class DayCompanion extends UpdateCompanion<DayEntry> {
  final Value<int> id;
  final Value<int> steps;
  final Value<DateTime> dayTime;
  const DayCompanion({
    this.id = const Value.absent(),
    this.steps = const Value.absent(),
    this.dayTime = const Value.absent(),
  });
  DayCompanion.insert({
    this.id = const Value.absent(),
    required int steps,
    required DateTime dayTime,
  }) : steps = Value(steps),
       dayTime = Value(dayTime);
  static Insertable<DayEntry> custom({
    Expression<int>? id,
    Expression<int>? steps,
    Expression<DateTime>? dayTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (steps != null) 'steps': steps,
      if (dayTime != null) 'day_time': dayTime,
    });
  }

  DayCompanion copyWith({
    Value<int>? id,
    Value<int>? steps,
    Value<DateTime>? dayTime,
  }) {
    return DayCompanion(
      id: id ?? this.id,
      steps: steps ?? this.steps,
      dayTime: dayTime ?? this.dayTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (steps.present) {
      map['steps'] = Variable<int>(steps.value);
    }
    if (dayTime.present) {
      map['day_time'] = Variable<DateTime>(dayTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DayCompanion(')
          ..write('id: $id, ')
          ..write('steps: $steps, ')
          ..write('dayTime: $dayTime')
          ..write(')'))
        .toString();
  }
}

class $DayCaloriesTable extends DayCalories
    with TableInfo<$DayCaloriesTable, DayCalory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DayCaloriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dayIdMeta = const VerificationMeta('dayId');
  @override
  late final GeneratedColumn<int> dayId = GeneratedColumn<int>(
    'day_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES day (id)',
    ),
  );
  static const VerificationMeta _caloriesIdMeta = const VerificationMeta(
    'caloriesId',
  );
  @override
  late final GeneratedColumn<int> caloriesId = GeneratedColumn<int>(
    'calories_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES calories (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, dayId, caloriesId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'day_calories';
  @override
  VerificationContext validateIntegrity(
    Insertable<DayCalory> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('day_id')) {
      context.handle(
        _dayIdMeta,
        dayId.isAcceptableOrUnknown(data['day_id']!, _dayIdMeta),
      );
    } else if (isInserting) {
      context.missing(_dayIdMeta);
    }
    if (data.containsKey('calories_id')) {
      context.handle(
        _caloriesIdMeta,
        caloriesId.isAcceptableOrUnknown(data['calories_id']!, _caloriesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_caloriesIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DayCalory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DayCalory(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dayId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_id'],
      )!,
      caloriesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}calories_id'],
      )!,
    );
  }

  @override
  $DayCaloriesTable createAlias(String alias) {
    return $DayCaloriesTable(attachedDatabase, alias);
  }
}

class DayCalory extends DataClass implements Insertable<DayCalory> {
  final int id;
  final int dayId;
  final int caloriesId;
  const DayCalory({
    required this.id,
    required this.dayId,
    required this.caloriesId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day_id'] = Variable<int>(dayId);
    map['calories_id'] = Variable<int>(caloriesId);
    return map;
  }

  DayCaloriesCompanion toCompanion(bool nullToAbsent) {
    return DayCaloriesCompanion(
      id: Value(id),
      dayId: Value(dayId),
      caloriesId: Value(caloriesId),
    );
  }

  factory DayCalory.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DayCalory(
      id: serializer.fromJson<int>(json['id']),
      dayId: serializer.fromJson<int>(json['dayId']),
      caloriesId: serializer.fromJson<int>(json['caloriesId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dayId': serializer.toJson<int>(dayId),
      'caloriesId': serializer.toJson<int>(caloriesId),
    };
  }

  DayCalory copyWith({int? id, int? dayId, int? caloriesId}) => DayCalory(
    id: id ?? this.id,
    dayId: dayId ?? this.dayId,
    caloriesId: caloriesId ?? this.caloriesId,
  );
  DayCalory copyWithCompanion(DayCaloriesCompanion data) {
    return DayCalory(
      id: data.id.present ? data.id.value : this.id,
      dayId: data.dayId.present ? data.dayId.value : this.dayId,
      caloriesId: data.caloriesId.present
          ? data.caloriesId.value
          : this.caloriesId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DayCalory(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('caloriesId: $caloriesId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, dayId, caloriesId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DayCalory &&
          other.id == this.id &&
          other.dayId == this.dayId &&
          other.caloriesId == this.caloriesId);
}

class DayCaloriesCompanion extends UpdateCompanion<DayCalory> {
  final Value<int> id;
  final Value<int> dayId;
  final Value<int> caloriesId;
  const DayCaloriesCompanion({
    this.id = const Value.absent(),
    this.dayId = const Value.absent(),
    this.caloriesId = const Value.absent(),
  });
  DayCaloriesCompanion.insert({
    this.id = const Value.absent(),
    required int dayId,
    required int caloriesId,
  }) : dayId = Value(dayId),
       caloriesId = Value(caloriesId);
  static Insertable<DayCalory> custom({
    Expression<int>? id,
    Expression<int>? dayId,
    Expression<int>? caloriesId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dayId != null) 'day_id': dayId,
      if (caloriesId != null) 'calories_id': caloriesId,
    });
  }

  DayCaloriesCompanion copyWith({
    Value<int>? id,
    Value<int>? dayId,
    Value<int>? caloriesId,
  }) {
    return DayCaloriesCompanion(
      id: id ?? this.id,
      dayId: dayId ?? this.dayId,
      caloriesId: caloriesId ?? this.caloriesId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dayId.present) {
      map['day_id'] = Variable<int>(dayId.value);
    }
    if (caloriesId.present) {
      map['calories_id'] = Variable<int>(caloriesId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DayCaloriesCompanion(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('caloriesId: $caloriesId')
          ..write(')'))
        .toString();
  }
}

class $DayWorkoutTable extends DayWorkout
    with TableInfo<$DayWorkoutTable, DayWorkoutData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DayWorkoutTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dayIdMeta = const VerificationMeta('dayId');
  @override
  late final GeneratedColumn<int> dayId = GeneratedColumn<int>(
    'day_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES day (id)',
    ),
  );
  static const VerificationMeta _workoutIdMeta = const VerificationMeta(
    'workoutId',
  );
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
    'workout_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, dayId, workoutId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'day_workout';
  @override
  VerificationContext validateIntegrity(
    Insertable<DayWorkoutData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('day_id')) {
      context.handle(
        _dayIdMeta,
        dayId.isAcceptableOrUnknown(data['day_id']!, _dayIdMeta),
      );
    } else if (isInserting) {
      context.missing(_dayIdMeta);
    }
    if (data.containsKey('workout_id')) {
      context.handle(
        _workoutIdMeta,
        workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DayWorkoutData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DayWorkoutData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dayId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_id'],
      )!,
      workoutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}workout_id'],
      )!,
    );
  }

  @override
  $DayWorkoutTable createAlias(String alias) {
    return $DayWorkoutTable(attachedDatabase, alias);
  }
}

class DayWorkoutData extends DataClass implements Insertable<DayWorkoutData> {
  final int id;
  final int dayId;
  final int workoutId;
  const DayWorkoutData({
    required this.id,
    required this.dayId,
    required this.workoutId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day_id'] = Variable<int>(dayId);
    map['workout_id'] = Variable<int>(workoutId);
    return map;
  }

  DayWorkoutCompanion toCompanion(bool nullToAbsent) {
    return DayWorkoutCompanion(
      id: Value(id),
      dayId: Value(dayId),
      workoutId: Value(workoutId),
    );
  }

  factory DayWorkoutData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DayWorkoutData(
      id: serializer.fromJson<int>(json['id']),
      dayId: serializer.fromJson<int>(json['dayId']),
      workoutId: serializer.fromJson<int>(json['workoutId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dayId': serializer.toJson<int>(dayId),
      'workoutId': serializer.toJson<int>(workoutId),
    };
  }

  DayWorkoutData copyWith({int? id, int? dayId, int? workoutId}) =>
      DayWorkoutData(
        id: id ?? this.id,
        dayId: dayId ?? this.dayId,
        workoutId: workoutId ?? this.workoutId,
      );
  DayWorkoutData copyWithCompanion(DayWorkoutCompanion data) {
    return DayWorkoutData(
      id: data.id.present ? data.id.value : this.id,
      dayId: data.dayId.present ? data.dayId.value : this.dayId,
      workoutId: data.workoutId.present ? data.workoutId.value : this.workoutId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DayWorkoutData(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, dayId, workoutId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DayWorkoutData &&
          other.id == this.id &&
          other.dayId == this.dayId &&
          other.workoutId == this.workoutId);
}

class DayWorkoutCompanion extends UpdateCompanion<DayWorkoutData> {
  final Value<int> id;
  final Value<int> dayId;
  final Value<int> workoutId;
  const DayWorkoutCompanion({
    this.id = const Value.absent(),
    this.dayId = const Value.absent(),
    this.workoutId = const Value.absent(),
  });
  DayWorkoutCompanion.insert({
    this.id = const Value.absent(),
    required int dayId,
    required int workoutId,
  }) : dayId = Value(dayId),
       workoutId = Value(workoutId);
  static Insertable<DayWorkoutData> custom({
    Expression<int>? id,
    Expression<int>? dayId,
    Expression<int>? workoutId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dayId != null) 'day_id': dayId,
      if (workoutId != null) 'workout_id': workoutId,
    });
  }

  DayWorkoutCompanion copyWith({
    Value<int>? id,
    Value<int>? dayId,
    Value<int>? workoutId,
  }) {
    return DayWorkoutCompanion(
      id: id ?? this.id,
      dayId: dayId ?? this.dayId,
      workoutId: workoutId ?? this.workoutId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dayId.present) {
      map['day_id'] = Variable<int>(dayId.value);
    }
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DayWorkoutCompanion(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WorkoutTable workout = $WorkoutTable(this);
  late final $CaloriesTable calories = $CaloriesTable(this);
  late final $DayTable day = $DayTable(this);
  late final $DayCaloriesTable dayCalories = $DayCaloriesTable(this);
  late final $DayWorkoutTable dayWorkout = $DayWorkoutTable(this);
  late final CaloriesDao caloriesDao = CaloriesDao(this as AppDatabase);
  late final WorkoutDao workoutDao = WorkoutDao(this as AppDatabase);
  late final DayDao dayDao = DayDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    workout,
    calories,
    day,
    dayCalories,
    dayWorkout,
  ];
}

typedef $$WorkoutTableCreateCompanionBuilder =
    WorkoutCompanion Function({
      Value<int> id,
      required double weight,
      required double workoutWeight,
      required int reps,
      required int sets,
      required String name,
      required int intensity,
    });
typedef $$WorkoutTableUpdateCompanionBuilder =
    WorkoutCompanion Function({
      Value<int> id,
      Value<double> weight,
      Value<double> workoutWeight,
      Value<int> reps,
      Value<int> sets,
      Value<String> name,
      Value<int> intensity,
    });

final class $$WorkoutTableReferences
    extends BaseReferences<_$AppDatabase, $WorkoutTable, WorkoutEntry> {
  $$WorkoutTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DayWorkoutTable, List<DayWorkoutData>>
  _dayWorkoutRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dayWorkout,
    aliasName: $_aliasNameGenerator(db.workout.id, db.dayWorkout.workoutId),
  );

  $$DayWorkoutTableProcessedTableManager get dayWorkoutRefs {
    final manager = $$DayWorkoutTableTableManager(
      $_db,
      $_db.dayWorkout,
    ).filter((f) => f.workoutId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dayWorkoutRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WorkoutTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get workoutWeight => $composableBuilder(
    column: $table.workoutWeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reps => $composableBuilder(
    column: $table.reps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sets => $composableBuilder(
    column: $table.sets,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intensity => $composableBuilder(
    column: $table.intensity,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> dayWorkoutRefs(
    Expression<bool> Function($$DayWorkoutTableFilterComposer f) f,
  ) {
    final $$DayWorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayWorkout,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayWorkoutTableFilterComposer(
            $db: $db,
            $table: $db.dayWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get workoutWeight => $composableBuilder(
    column: $table.workoutWeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reps => $composableBuilder(
    column: $table.reps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sets => $composableBuilder(
    column: $table.sets,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intensity => $composableBuilder(
    column: $table.intensity,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WorkoutTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<double> get workoutWeight => $composableBuilder(
    column: $table.workoutWeight,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reps =>
      $composableBuilder(column: $table.reps, builder: (column) => column);

  GeneratedColumn<int> get sets =>
      $composableBuilder(column: $table.sets, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get intensity =>
      $composableBuilder(column: $table.intensity, builder: (column) => column);

  Expression<T> dayWorkoutRefs<T extends Object>(
    Expression<T> Function($$DayWorkoutTableAnnotationComposer a) f,
  ) {
    final $$DayWorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayWorkout,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayWorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.dayWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutTable,
          WorkoutEntry,
          $$WorkoutTableFilterComposer,
          $$WorkoutTableOrderingComposer,
          $$WorkoutTableAnnotationComposer,
          $$WorkoutTableCreateCompanionBuilder,
          $$WorkoutTableUpdateCompanionBuilder,
          (WorkoutEntry, $$WorkoutTableReferences),
          WorkoutEntry,
          PrefetchHooks Function({bool dayWorkoutRefs})
        > {
  $$WorkoutTableTableManager(_$AppDatabase db, $WorkoutTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> weight = const Value.absent(),
                Value<double> workoutWeight = const Value.absent(),
                Value<int> reps = const Value.absent(),
                Value<int> sets = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> intensity = const Value.absent(),
              }) => WorkoutCompanion(
                id: id,
                weight: weight,
                workoutWeight: workoutWeight,
                reps: reps,
                sets: sets,
                name: name,
                intensity: intensity,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double weight,
                required double workoutWeight,
                required int reps,
                required int sets,
                required String name,
                required int intensity,
              }) => WorkoutCompanion.insert(
                id: id,
                weight: weight,
                workoutWeight: workoutWeight,
                reps: reps,
                sets: sets,
                name: name,
                intensity: intensity,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WorkoutTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({dayWorkoutRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dayWorkoutRefs) db.dayWorkout],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dayWorkoutRefs)
                    await $_getPrefetchedData<
                      WorkoutEntry,
                      $WorkoutTable,
                      DayWorkoutData
                    >(
                      currentTable: table,
                      referencedTable: $$WorkoutTableReferences
                          ._dayWorkoutRefsTable(db),
                      managerFromTypedResult: (p0) => $$WorkoutTableReferences(
                        db,
                        table,
                        p0,
                      ).dayWorkoutRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.workoutId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$WorkoutTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutTable,
      WorkoutEntry,
      $$WorkoutTableFilterComposer,
      $$WorkoutTableOrderingComposer,
      $$WorkoutTableAnnotationComposer,
      $$WorkoutTableCreateCompanionBuilder,
      $$WorkoutTableUpdateCompanionBuilder,
      (WorkoutEntry, $$WorkoutTableReferences),
      WorkoutEntry,
      PrefetchHooks Function({bool dayWorkoutRefs})
    >;
typedef $$CaloriesTableCreateCompanionBuilder =
    CaloriesCompanion Function({
      Value<int> id,
      required String name,
      required double calorieAmount,
    });
typedef $$CaloriesTableUpdateCompanionBuilder =
    CaloriesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<double> calorieAmount,
    });

final class $$CaloriesTableReferences
    extends BaseReferences<_$AppDatabase, $CaloriesTable, Calorie> {
  $$CaloriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DayCaloriesTable, List<DayCalory>>
  _dayCaloriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dayCalories,
    aliasName: $_aliasNameGenerator(db.calories.id, db.dayCalories.caloriesId),
  );

  $$DayCaloriesTableProcessedTableManager get dayCaloriesRefs {
    final manager = $$DayCaloriesTableTableManager(
      $_db,
      $_db.dayCalories,
    ).filter((f) => f.caloriesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dayCaloriesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CaloriesTableFilterComposer
    extends Composer<_$AppDatabase, $CaloriesTable> {
  $$CaloriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get calorieAmount => $composableBuilder(
    column: $table.calorieAmount,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> dayCaloriesRefs(
    Expression<bool> Function($$DayCaloriesTableFilterComposer f) f,
  ) {
    final $$DayCaloriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayCalories,
      getReferencedColumn: (t) => t.caloriesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayCaloriesTableFilterComposer(
            $db: $db,
            $table: $db.dayCalories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CaloriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CaloriesTable> {
  $$CaloriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get calorieAmount => $composableBuilder(
    column: $table.calorieAmount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CaloriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CaloriesTable> {
  $$CaloriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get calorieAmount => $composableBuilder(
    column: $table.calorieAmount,
    builder: (column) => column,
  );

  Expression<T> dayCaloriesRefs<T extends Object>(
    Expression<T> Function($$DayCaloriesTableAnnotationComposer a) f,
  ) {
    final $$DayCaloriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayCalories,
      getReferencedColumn: (t) => t.caloriesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayCaloriesTableAnnotationComposer(
            $db: $db,
            $table: $db.dayCalories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CaloriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CaloriesTable,
          Calorie,
          $$CaloriesTableFilterComposer,
          $$CaloriesTableOrderingComposer,
          $$CaloriesTableAnnotationComposer,
          $$CaloriesTableCreateCompanionBuilder,
          $$CaloriesTableUpdateCompanionBuilder,
          (Calorie, $$CaloriesTableReferences),
          Calorie,
          PrefetchHooks Function({bool dayCaloriesRefs})
        > {
  $$CaloriesTableTableManager(_$AppDatabase db, $CaloriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CaloriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CaloriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CaloriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> calorieAmount = const Value.absent(),
              }) => CaloriesCompanion(
                id: id,
                name: name,
                calorieAmount: calorieAmount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required double calorieAmount,
              }) => CaloriesCompanion.insert(
                id: id,
                name: name,
                calorieAmount: calorieAmount,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CaloriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({dayCaloriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dayCaloriesRefs) db.dayCalories],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dayCaloriesRefs)
                    await $_getPrefetchedData<
                      Calorie,
                      $CaloriesTable,
                      DayCalory
                    >(
                      currentTable: table,
                      referencedTable: $$CaloriesTableReferences
                          ._dayCaloriesRefsTable(db),
                      managerFromTypedResult: (p0) => $$CaloriesTableReferences(
                        db,
                        table,
                        p0,
                      ).dayCaloriesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.caloriesId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CaloriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CaloriesTable,
      Calorie,
      $$CaloriesTableFilterComposer,
      $$CaloriesTableOrderingComposer,
      $$CaloriesTableAnnotationComposer,
      $$CaloriesTableCreateCompanionBuilder,
      $$CaloriesTableUpdateCompanionBuilder,
      (Calorie, $$CaloriesTableReferences),
      Calorie,
      PrefetchHooks Function({bool dayCaloriesRefs})
    >;
typedef $$DayTableCreateCompanionBuilder =
    DayCompanion Function({
      Value<int> id,
      required int steps,
      required DateTime dayTime,
    });
typedef $$DayTableUpdateCompanionBuilder =
    DayCompanion Function({
      Value<int> id,
      Value<int> steps,
      Value<DateTime> dayTime,
    });

final class $$DayTableReferences
    extends BaseReferences<_$AppDatabase, $DayTable, DayEntry> {
  $$DayTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DayCaloriesTable, List<DayCalory>>
  _dayCaloriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dayCalories,
    aliasName: $_aliasNameGenerator(db.day.id, db.dayCalories.dayId),
  );

  $$DayCaloriesTableProcessedTableManager get dayCaloriesRefs {
    final manager = $$DayCaloriesTableTableManager(
      $_db,
      $_db.dayCalories,
    ).filter((f) => f.dayId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dayCaloriesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DayWorkoutTable, List<DayWorkoutData>>
  _dayWorkoutRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dayWorkout,
    aliasName: $_aliasNameGenerator(db.day.id, db.dayWorkout.dayId),
  );

  $$DayWorkoutTableProcessedTableManager get dayWorkoutRefs {
    final manager = $$DayWorkoutTableTableManager(
      $_db,
      $_db.dayWorkout,
    ).filter((f) => f.dayId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dayWorkoutRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$DayTableFilterComposer extends Composer<_$AppDatabase, $DayTable> {
  $$DayTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get steps => $composableBuilder(
    column: $table.steps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dayTime => $composableBuilder(
    column: $table.dayTime,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> dayCaloriesRefs(
    Expression<bool> Function($$DayCaloriesTableFilterComposer f) f,
  ) {
    final $$DayCaloriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayCalories,
      getReferencedColumn: (t) => t.dayId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayCaloriesTableFilterComposer(
            $db: $db,
            $table: $db.dayCalories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> dayWorkoutRefs(
    Expression<bool> Function($$DayWorkoutTableFilterComposer f) f,
  ) {
    final $$DayWorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayWorkout,
      getReferencedColumn: (t) => t.dayId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayWorkoutTableFilterComposer(
            $db: $db,
            $table: $db.dayWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DayTableOrderingComposer extends Composer<_$AppDatabase, $DayTable> {
  $$DayTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get steps => $composableBuilder(
    column: $table.steps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dayTime => $composableBuilder(
    column: $table.dayTime,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DayTableAnnotationComposer extends Composer<_$AppDatabase, $DayTable> {
  $$DayTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get steps =>
      $composableBuilder(column: $table.steps, builder: (column) => column);

  GeneratedColumn<DateTime> get dayTime =>
      $composableBuilder(column: $table.dayTime, builder: (column) => column);

  Expression<T> dayCaloriesRefs<T extends Object>(
    Expression<T> Function($$DayCaloriesTableAnnotationComposer a) f,
  ) {
    final $$DayCaloriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayCalories,
      getReferencedColumn: (t) => t.dayId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayCaloriesTableAnnotationComposer(
            $db: $db,
            $table: $db.dayCalories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> dayWorkoutRefs<T extends Object>(
    Expression<T> Function($$DayWorkoutTableAnnotationComposer a) f,
  ) {
    final $$DayWorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dayWorkout,
      getReferencedColumn: (t) => t.dayId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayWorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.dayWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DayTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DayTable,
          DayEntry,
          $$DayTableFilterComposer,
          $$DayTableOrderingComposer,
          $$DayTableAnnotationComposer,
          $$DayTableCreateCompanionBuilder,
          $$DayTableUpdateCompanionBuilder,
          (DayEntry, $$DayTableReferences),
          DayEntry,
          PrefetchHooks Function({bool dayCaloriesRefs, bool dayWorkoutRefs})
        > {
  $$DayTableTableManager(_$AppDatabase db, $DayTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DayTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DayTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DayTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> steps = const Value.absent(),
                Value<DateTime> dayTime = const Value.absent(),
              }) => DayCompanion(id: id, steps: steps, dayTime: dayTime),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int steps,
                required DateTime dayTime,
              }) => DayCompanion.insert(id: id, steps: steps, dayTime: dayTime),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (e.readTable(table), $$DayTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({dayCaloriesRefs = false, dayWorkoutRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (dayCaloriesRefs) db.dayCalories,
                    if (dayWorkoutRefs) db.dayWorkout,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (dayCaloriesRefs)
                        await $_getPrefetchedData<
                          DayEntry,
                          $DayTable,
                          DayCalory
                        >(
                          currentTable: table,
                          referencedTable: $$DayTableReferences
                              ._dayCaloriesRefsTable(db),
                          managerFromTypedResult: (p0) => $$DayTableReferences(
                            db,
                            table,
                            p0,
                          ).dayCaloriesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.dayId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (dayWorkoutRefs)
                        await $_getPrefetchedData<
                          DayEntry,
                          $DayTable,
                          DayWorkoutData
                        >(
                          currentTable: table,
                          referencedTable: $$DayTableReferences
                              ._dayWorkoutRefsTable(db),
                          managerFromTypedResult: (p0) => $$DayTableReferences(
                            db,
                            table,
                            p0,
                          ).dayWorkoutRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.dayId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$DayTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DayTable,
      DayEntry,
      $$DayTableFilterComposer,
      $$DayTableOrderingComposer,
      $$DayTableAnnotationComposer,
      $$DayTableCreateCompanionBuilder,
      $$DayTableUpdateCompanionBuilder,
      (DayEntry, $$DayTableReferences),
      DayEntry,
      PrefetchHooks Function({bool dayCaloriesRefs, bool dayWorkoutRefs})
    >;
typedef $$DayCaloriesTableCreateCompanionBuilder =
    DayCaloriesCompanion Function({
      Value<int> id,
      required int dayId,
      required int caloriesId,
    });
typedef $$DayCaloriesTableUpdateCompanionBuilder =
    DayCaloriesCompanion Function({
      Value<int> id,
      Value<int> dayId,
      Value<int> caloriesId,
    });

final class $$DayCaloriesTableReferences
    extends BaseReferences<_$AppDatabase, $DayCaloriesTable, DayCalory> {
  $$DayCaloriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DayTable _dayIdTable(_$AppDatabase db) =>
      db.day.createAlias($_aliasNameGenerator(db.dayCalories.dayId, db.day.id));

  $$DayTableProcessedTableManager get dayId {
    final $_column = $_itemColumn<int>('day_id')!;

    final manager = $$DayTableTableManager(
      $_db,
      $_db.day,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dayIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CaloriesTable _caloriesIdTable(_$AppDatabase db) =>
      db.calories.createAlias(
        $_aliasNameGenerator(db.dayCalories.caloriesId, db.calories.id),
      );

  $$CaloriesTableProcessedTableManager get caloriesId {
    final $_column = $_itemColumn<int>('calories_id')!;

    final manager = $$CaloriesTableTableManager(
      $_db,
      $_db.calories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_caloriesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DayCaloriesTableFilterComposer
    extends Composer<_$AppDatabase, $DayCaloriesTable> {
  $$DayCaloriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  $$DayTableFilterComposer get dayId {
    final $$DayTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableFilterComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CaloriesTableFilterComposer get caloriesId {
    final $$CaloriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.caloriesId,
      referencedTable: $db.calories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CaloriesTableFilterComposer(
            $db: $db,
            $table: $db.calories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayCaloriesTableOrderingComposer
    extends Composer<_$AppDatabase, $DayCaloriesTable> {
  $$DayCaloriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  $$DayTableOrderingComposer get dayId {
    final $$DayTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableOrderingComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CaloriesTableOrderingComposer get caloriesId {
    final $$CaloriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.caloriesId,
      referencedTable: $db.calories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CaloriesTableOrderingComposer(
            $db: $db,
            $table: $db.calories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayCaloriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DayCaloriesTable> {
  $$DayCaloriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$DayTableAnnotationComposer get dayId {
    final $$DayTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableAnnotationComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CaloriesTableAnnotationComposer get caloriesId {
    final $$CaloriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.caloriesId,
      referencedTable: $db.calories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CaloriesTableAnnotationComposer(
            $db: $db,
            $table: $db.calories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayCaloriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DayCaloriesTable,
          DayCalory,
          $$DayCaloriesTableFilterComposer,
          $$DayCaloriesTableOrderingComposer,
          $$DayCaloriesTableAnnotationComposer,
          $$DayCaloriesTableCreateCompanionBuilder,
          $$DayCaloriesTableUpdateCompanionBuilder,
          (DayCalory, $$DayCaloriesTableReferences),
          DayCalory,
          PrefetchHooks Function({bool dayId, bool caloriesId})
        > {
  $$DayCaloriesTableTableManager(_$AppDatabase db, $DayCaloriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DayCaloriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DayCaloriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DayCaloriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> dayId = const Value.absent(),
                Value<int> caloriesId = const Value.absent(),
              }) => DayCaloriesCompanion(
                id: id,
                dayId: dayId,
                caloriesId: caloriesId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int dayId,
                required int caloriesId,
              }) => DayCaloriesCompanion.insert(
                id: id,
                dayId: dayId,
                caloriesId: caloriesId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DayCaloriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({dayId = false, caloriesId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (dayId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.dayId,
                                referencedTable: $$DayCaloriesTableReferences
                                    ._dayIdTable(db),
                                referencedColumn: $$DayCaloriesTableReferences
                                    ._dayIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (caloriesId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.caloriesId,
                                referencedTable: $$DayCaloriesTableReferences
                                    ._caloriesIdTable(db),
                                referencedColumn: $$DayCaloriesTableReferences
                                    ._caloriesIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DayCaloriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DayCaloriesTable,
      DayCalory,
      $$DayCaloriesTableFilterComposer,
      $$DayCaloriesTableOrderingComposer,
      $$DayCaloriesTableAnnotationComposer,
      $$DayCaloriesTableCreateCompanionBuilder,
      $$DayCaloriesTableUpdateCompanionBuilder,
      (DayCalory, $$DayCaloriesTableReferences),
      DayCalory,
      PrefetchHooks Function({bool dayId, bool caloriesId})
    >;
typedef $$DayWorkoutTableCreateCompanionBuilder =
    DayWorkoutCompanion Function({
      Value<int> id,
      required int dayId,
      required int workoutId,
    });
typedef $$DayWorkoutTableUpdateCompanionBuilder =
    DayWorkoutCompanion Function({
      Value<int> id,
      Value<int> dayId,
      Value<int> workoutId,
    });

final class $$DayWorkoutTableReferences
    extends BaseReferences<_$AppDatabase, $DayWorkoutTable, DayWorkoutData> {
  $$DayWorkoutTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DayTable _dayIdTable(_$AppDatabase db) =>
      db.day.createAlias($_aliasNameGenerator(db.dayWorkout.dayId, db.day.id));

  $$DayTableProcessedTableManager get dayId {
    final $_column = $_itemColumn<int>('day_id')!;

    final manager = $$DayTableTableManager(
      $_db,
      $_db.day,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dayIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $WorkoutTable _workoutIdTable(_$AppDatabase db) =>
      db.workout.createAlias(
        $_aliasNameGenerator(db.dayWorkout.workoutId, db.workout.id),
      );

  $$WorkoutTableProcessedTableManager get workoutId {
    final $_column = $_itemColumn<int>('workout_id')!;

    final manager = $$WorkoutTableTableManager(
      $_db,
      $_db.workout,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DayWorkoutTableFilterComposer
    extends Composer<_$AppDatabase, $DayWorkoutTable> {
  $$DayWorkoutTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  $$DayTableFilterComposer get dayId {
    final $$DayTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableFilterComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableFilterComposer get workoutId {
    final $$WorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableFilterComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayWorkoutTableOrderingComposer
    extends Composer<_$AppDatabase, $DayWorkoutTable> {
  $$DayWorkoutTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  $$DayTableOrderingComposer get dayId {
    final $$DayTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableOrderingComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableOrderingComposer get workoutId {
    final $$WorkoutTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableOrderingComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayWorkoutTableAnnotationComposer
    extends Composer<_$AppDatabase, $DayWorkoutTable> {
  $$DayWorkoutTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$DayTableAnnotationComposer get dayId {
    final $$DayTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.day,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DayTableAnnotationComposer(
            $db: $db,
            $table: $db.day,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableAnnotationComposer get workoutId {
    final $$WorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DayWorkoutTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DayWorkoutTable,
          DayWorkoutData,
          $$DayWorkoutTableFilterComposer,
          $$DayWorkoutTableOrderingComposer,
          $$DayWorkoutTableAnnotationComposer,
          $$DayWorkoutTableCreateCompanionBuilder,
          $$DayWorkoutTableUpdateCompanionBuilder,
          (DayWorkoutData, $$DayWorkoutTableReferences),
          DayWorkoutData,
          PrefetchHooks Function({bool dayId, bool workoutId})
        > {
  $$DayWorkoutTableTableManager(_$AppDatabase db, $DayWorkoutTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DayWorkoutTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DayWorkoutTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DayWorkoutTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> dayId = const Value.absent(),
                Value<int> workoutId = const Value.absent(),
              }) => DayWorkoutCompanion(
                id: id,
                dayId: dayId,
                workoutId: workoutId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int dayId,
                required int workoutId,
              }) => DayWorkoutCompanion.insert(
                id: id,
                dayId: dayId,
                workoutId: workoutId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DayWorkoutTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({dayId = false, workoutId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (dayId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.dayId,
                                referencedTable: $$DayWorkoutTableReferences
                                    ._dayIdTable(db),
                                referencedColumn: $$DayWorkoutTableReferences
                                    ._dayIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (workoutId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.workoutId,
                                referencedTable: $$DayWorkoutTableReferences
                                    ._workoutIdTable(db),
                                referencedColumn: $$DayWorkoutTableReferences
                                    ._workoutIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DayWorkoutTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DayWorkoutTable,
      DayWorkoutData,
      $$DayWorkoutTableFilterComposer,
      $$DayWorkoutTableOrderingComposer,
      $$DayWorkoutTableAnnotationComposer,
      $$DayWorkoutTableCreateCompanionBuilder,
      $$DayWorkoutTableUpdateCompanionBuilder,
      (DayWorkoutData, $$DayWorkoutTableReferences),
      DayWorkoutData,
      PrefetchHooks Function({bool dayId, bool workoutId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WorkoutTableTableManager get workout =>
      $$WorkoutTableTableManager(_db, _db.workout);
  $$CaloriesTableTableManager get calories =>
      $$CaloriesTableTableManager(_db, _db.calories);
  $$DayTableTableManager get day => $$DayTableTableManager(_db, _db.day);
  $$DayCaloriesTableTableManager get dayCalories =>
      $$DayCaloriesTableTableManager(_db, _db.dayCalories);
  $$DayWorkoutTableTableManager get dayWorkout =>
      $$DayWorkoutTableTableManager(_db, _db.dayWorkout);
}
