import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double caloriesBurned;
  const EquipmentCard({super.key, required this.equipmentName, required this.equipmentDescription, required this.equipmentImageUrl, required this.noOfMinutes, required this.caloriesBurned});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSubTitleColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kMainBlack,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                // Image.asset(
                  //equipmentImageUrl,
                  //width: 100,
                  //fit: BoxFit.cover,
                //),
                Text("image",style: TextStyle(color: kMainLightBlueColor),),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("${noOfMinutes.toString()} of Workout", style: TextStyle(color: kMainpurpleColoer),),
                  Text("${caloriesBurned.toString()} of Workout", style: TextStyle(color: kMainpurpleColoer),)
                    ],
                    ),
              ],
            ),
            const SizedBox(height: 10), 
            Text(
              equipmentDescription,
              style: const TextStyle(
                fontSize: 16,
                color: kMainBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}