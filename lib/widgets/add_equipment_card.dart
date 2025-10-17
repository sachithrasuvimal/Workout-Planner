import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';

class AddEquipmentCard extends StatefulWidget {
    final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double caloriesBurned;
  const AddEquipmentCard({super.key, required this.equipmentName, required this.equipmentDescription, required this.equipmentImageUrl, required this.noOfMinutes, required this.caloriesBurned});

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color:kSubTitleColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
            widget.equipmentName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kMainBlack
            ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(widget.equipmentImageUrl,width: 100,fit: BoxFit.cover,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.equipmentDescription,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kMainBlack
                    ),
                    ),
                    Text("Time: ${widget.noOfMinutes.toString()} minutes and ${widget.caloriesBurned.toString()} calories burned",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kMainBlack
                    ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.add,
                        color: kMainDarkBlue, 
                        size: 20),
                    ),
                  ),
                ),

                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                       
                      },
                      icon: Icon(
                        Icons. favorite ,
                        color: kMainpurpleColoer,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}