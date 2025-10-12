import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const ExerciseCard({
    super.key, 
  required this.title, 
  required this.imageUrl, 
  required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            kMainColor,
            kMainDarkBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),),
    );
  }
}
