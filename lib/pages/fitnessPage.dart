import 'package:better_life/models/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Fitnesspage extends StatelessWidget {
  const Fitnesspage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Provider.of<AppDatabase>(context, listen: false);

    return Scaffold(
      body: FutureBuilder(
        future: db.workoutDao.getWorkouts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('no data detected'));
          }

          final dataList = snapshot.data!;

          return Center(
            child: Text(
              'the only workout is ${dataList[0].name} that used ${dataList[0].workoutWeight} KG weights',
            ),
          );
        },
      ),
    );
  }
}
