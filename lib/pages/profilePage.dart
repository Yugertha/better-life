import 'package:better_life/models/database.dart';
//import 'package:better_life/models/tables/day_workout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Provider.of<AppDatabase>(context, listen: false);

    return Scaffold(
      body: FutureBuilder(
        future: db.dayDao.getDays(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('there is no data detected'));
          }

          final dataList = snapshot.data!;

          final query = db.select(db.dayWorkout)
            ..where((t) => t.dayId.equals(dataList[0].id));
          final relatedWorkouts = query.get();
          return Center(
            child: Text(
              'the workouts related to day ${dataList[0].dayTime.day} is ${relatedWorkouts.toString()}',
            ),
          );
        },
      ),
    );
  }
}
