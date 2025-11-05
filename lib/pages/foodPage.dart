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

  final TextEditingController nameController = TextEditingController();
  final countController = TextEditingController();

  @override
  void initState() {
    super.initState();
    db = Provider.of<AppDatabase>(context, listen: false);
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
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: openNewCalories,
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: db.caloriesDao.getCalories(),
        //future: db.caloriesDao.getCalories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('There was an Error '));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('There is no data'));
          }

          final dataList = snapshot.data!;

          print(
            'the database has ${dataList.length} entries with ${dataList[0].name} as the first entry',
          );

          return Center(
            //child: Text('the database has ${dataList.length} entries.'),
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final dataEntry = dataList[index];

                return ListTile(
                  title: Text(dataEntry.name),
                  subtitle: Text(dataEntry.calorieAmount.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => deleteCalories(index),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
