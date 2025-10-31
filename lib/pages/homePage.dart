import 'package:better_life/pages/fitnessPage.dart';
import 'package:better_life/pages/foodPage.dart';
import 'package:better_life/pages/profilePage.dart';
import 'package:better_life/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _setIndex = 0;

  void navigateIndex(int index) {
    setState(() {
      _setIndex = index;
    });
  }

  //final List _pages = [Profilepage(), Foodpage(), Fitnesspage()];

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Profilepage();
      case 1:
        return Foodpage();
      case 2:
        return Fitnesspage();
      default:
        return Profilepage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Better Life'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggelTheme();
            },
            icon: Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: _getPage(_setIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _setIndex,
        onTap: navigateIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'food'),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'fitness',
          ),
        ],
      ),
    );
  }
}
