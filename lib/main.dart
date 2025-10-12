import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_planner/pages/add_new_page.dart';
import 'package:workout_planner/pages/favourites.dart';
import 'package:workout_planner/pages/home_page.dart';
import 'package:workout_planner/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 1. Declare and initialize the _currentIndex variable
  int _currentIndex = 0; 

  final List<Widget> _pages = [
    HomePage(),
    AddNewPage(),
    FavouritesPage(),
    ProfilePage(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Workout Planner",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: GoogleFonts.interTextTheme(Theme.of( context).textTheme),
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.lightBlue,
          // Now _currentIndex is a valid variable
          currentIndex: _currentIndex, 
          onTap: (index){
            setState(() {
              // Now _currentIndex can be updated
              _currentIndex = index; 
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add New"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        // Now _currentIndex is used to select the page
        body: _pages[_currentIndex], 
      )
    );
  }
}
