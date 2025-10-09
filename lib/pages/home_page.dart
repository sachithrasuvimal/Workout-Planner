import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//Date and time
  final DateFormat formatter = DateFormat('EEEE-MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //User Name
  final userData

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);


    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
        child: Padding
        (padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              "$formattedDate $formatterDay",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kSubTitleColor
              ),
            ),
          ],
        ),
       ),
       ),
     )
    );
  }
}