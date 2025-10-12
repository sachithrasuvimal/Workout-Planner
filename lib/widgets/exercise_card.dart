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
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: kSubTitleColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kMainBlack,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(imageUrl,width: 100,
            fit: BoxFit.cover,),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: kMainColor,
              ),
            ),
          ]
        ),
      ),
    );
  }
}
