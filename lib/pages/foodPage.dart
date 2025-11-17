import 'dart:async';

import 'package:better_life/models/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Foodpage extends StatefulWidget {
  const Foodpage({super.key});

  @override
  State<Foodpage> createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
  late final AppDatabase db;
  late StreamSubscription<List<Calorie>> calorieSub;

  final TextEditingController nameController = TextEditingController();
  final countController = TextEditingController();

  List<Calorie> calories = [];

  @override
  void initState() {
    super.initState();
    db = Provider.of<AppDatabase>(context, listen: false);

    calorieSub = db.caloriesDao.streamCalories().listen((data) {
      setState(() {
        calories = data;
      });
    });
  }

  Future<void> addCalories() async {
    final String name = nameController.text.trim();
    final double caloCount = double.parse(countController.text);

    await db.caloriesDao.insertCalories(
      CaloriesCompanion.insert(name: name, calorieAmount: caloCount),
    );
    setState(() {});
  }

  Future<void> deleteCalories(int id) async {
    await db.caloriesDao.deleteCalories(id);
    setState(() {});
  }

  Future<void> updateCalories(int id) async {
    deleteCalories(id);
    addCalories();
    setState(() {});
  }

  Future<void> updateOpenCalories(int id) async {
    final kcal = await db.caloriesDao.getCaloriesById(id);

    if (kcal == null) return;

    nameController.text = kcal.name;
    countController.text = kcal.calorieAmount.toString();

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Meal'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Meal Name'),
              ),

              const SizedBox(height: 12),
              TextField(
                controller: countController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Calorie Amount'),
              ),
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              nameController.clear();
              countController.clear();
            },
            child: const Text('Cancel'),
          ),

          TextButton(
            onPressed: () {
              Navigator.pop(context);
              updateCalories(id);
              nameController.clear();
              countController.clear();
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  Future<void> openNewCalories() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add New Meal'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Meal Name'),
              ),

              const SizedBox(height: 12),
              TextField(
                controller: countController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Calorie Amount'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              nameController.clear();
              countController.clear();
            },
            child: const Text('Cancel'),
          ),

          TextButton(
            onPressed: () {
              Navigator.pop(context);
              addCalories();
              nameController.clear();
              countController.clear();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    calorieSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: openNewCalories,
        child: const Icon(Icons.add),
      ),
      body: calories.isEmpty
          ? const Center(child: Text('the database is empty'))
          : ListView.builder(
              itemCount: calories.length,
              itemBuilder: (context, index) {
                final c = calories[index];

                return ListTile(
                  title: Text(c.name),
                  subtitle: Text('${c.calorieAmount} Kcal'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          deleteCalories(c.id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          updateOpenCalories(c.id);
                        },
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
