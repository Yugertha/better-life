import 'package:better_life/models/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Foodpage extends StatelessWidget {
  const Foodpage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Provider.of<AppDatabase>(context, listen: false);

    return Scaffold(
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

          return Center(
            //child: Text('the database has ${dataList.length} entries.'),
            child: Text('the only entery is ${dataList[0].name}'),
          );
        },
      ),
    );
  }
}
