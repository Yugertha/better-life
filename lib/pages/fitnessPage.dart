import 'dart:async';

import 'package:better_life/models/database.dart';
//import 'package:better_life/models/tables/workout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Fitnesspage extends StatefulWidget {
  const Fitnesspage({super.key});

  @override
  State<Fitnesspage> createState() => _FitnesspageState();
}

class _FitnesspageState extends State<Fitnesspage> {
  late final AppDatabase db;
  late StreamSubscription<List<WorkoutEntry>> workoutSub;

  final _nameController = TextEditingController();
  final _repsController = TextEditingController();
  final _setsController = TextEditingController();
  final _weightController = TextEditingController();
  final _workoutWeightController = TextEditingController();

  List<WorkoutEntry> workouts = [];

  Future<void> addWorkout() async {
    final name = _nameController.text.trim();
    final reps = int.parse(_repsController.text.trim());
    final sets = int.parse(_setsController.text.trim());
    final weight = double.parse(_weightController.text.trim());
    final workoutWeight = double.parse(_workoutWeightController.text.trim());
    final intensity = _selectedIntensity;

    await db.workoutDao.insertWorkout(
      WorkoutCompanion.insert(
        weight: weight,
        workoutWeight: workoutWeight,
        reps: reps,
        sets: sets,
        name: name,
        intensity: intensity,
      ),
    );

    setState(() {});

    clearController();
  }

  Future<void> deleteWorkout(int id) async {
    await db.workoutDao.deleteWorkout(id);

    setState(() {});
  }

  Future<void> updateWorkout(int id) async {
    deleteWorkout(id);
    addWorkout();

    setState(() {});
  }

  void clearController() {
    _nameController.clear();
    _repsController.clear();
    _setsController.clear();
    _weightController.clear();
    _workoutWeightController.clear();
    _selectedIntensity = 1;
  }

  int _selectedIntensity = 1;

  Future<void> openUpdateWorkout(int id) async {
    List<int> items = [1, 2, 3];

    final workout = await db.workoutDao.getWorkoutsById(id);

    if (workout == null) return;

    _nameController.text = workout.name;
    _repsController.text = workout.reps.toString();
    _setsController.text = workout.sets.toString();
    _weightController.text = workout.weight.toString();
    _workoutWeightController.text = workout.workoutWeight.toString();

    setState(() {
      _selectedIntensity = workout.intensity;
    });

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Workout'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Workout name'),
              ),

              TextField(
                controller: _repsController,
                decoration: const InputDecoration(labelText: 'Repetitions'),
                keyboardType: TextInputType.number,
              ),

              TextField(
                controller: _setsController,
                decoration: const InputDecoration(labelText: 'Sets'),
                keyboardType: TextInputType.number,
              ),

              TextField(
                controller: _workoutWeightController,
                decoration: const InputDecoration(
                  labelText: 'Weight of the workout',
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),

              TextField(
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Your weight in kg',
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),

              DropdownButtonFormField(
                value: _selectedIntensity,
                decoration: const InputDecoration(labelText: 'Intensity'),
                items: items.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item.toString()),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  if (newValue != null) {
                    _selectedIntensity = newValue;
                  }
                },
              ),
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              clearController();
            },
            child: const Text('Cancle'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await updateWorkout(id);
              clearController();
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  Future<void> openNewWorkout() {
    List<int> items = [1, 2, 3];

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Workout'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Workout Name'),
              ),

              TextField(
                controller: _repsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Repetitions'),
              ),

              TextField(
                controller: _setsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Sets'),
              ),

              TextField(
                controller: _workoutWeightController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  labelText: 'Weight of the workout',
                ),
              ),

              TextField(
                controller: _weightController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  labelText: 'Your weight in kg',
                ),
              ),

              DropdownButtonFormField(
                value: _selectedIntensity,
                decoration: const InputDecoration(labelText: 'Intensity'),
                items: items.map((int item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item.toString()),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  if (newValue != null) {
                    _selectedIntensity = newValue;
                  }
                },
              ),
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              clearController();
            },
            child: const Text('Cancle'),
          ),

          TextButton(
            onPressed: () {
              Navigator.pop(context);
              addWorkout();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    db = Provider.of<AppDatabase>(context, listen: false);

    workoutSub = db.workoutDao.streamWorkouts().listen((data) {
      setState(() {
        workouts = data;
      });
    });
  }

  @override
  void dispose() {
    workoutSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: openNewWorkout,
        child: const Icon(Icons.add),
      ),
      body: workouts.isEmpty
          ? const Center(child: Text('the Database is empty'))
          : ListView.builder(
              itemCount: workouts.length,
              itemBuilder: (context, index) {
                final w = workouts[index];

                return ListTile(
                  title: Text(w.name),
                  subtitle: Text(w.workoutWeight.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => deleteWorkout(w.id),
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () => openUpdateWorkout(w.id),
                        icon: Icon(Icons.update),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
