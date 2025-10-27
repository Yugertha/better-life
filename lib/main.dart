import 'package:better_life/pages/homePage.dart';
import 'package:better_life/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:better_life/models/database.dart';
//import 'package:better_life/models/tables/day.dart';
//import 'package:better_life/models/tables/workout.dart';
//import 'package:better_life/models/tables/calories.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Life',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
