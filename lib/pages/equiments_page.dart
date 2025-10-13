import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/widgets/equipment_card.dart';

class EquimentsDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final List<Equipment> equipmentsList; // Add this line>
  const EquimentsDetailsPage({super.key, required this.equipmentTitle, required this.equipmentDescription, required this.equipmentsList, required List<Equipment> equipmentList});

  @override
  State<EquimentsDetailsPage> createState() => _EquimentsDetailsPageState();
}

class _EquimentsDetailsPageState extends State<EquimentsDetailsPage> {
  //Date and time
  final DateFormat formatter = DateFormat('EEEE-MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "$formattedDate $formatterDay",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kSubTitleColor,
              ),
            ),
            Text(
              widget.equipmentTitle,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kMainBlack,
              ),
            ),
          ],
        ),
      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [ 
              Text(
                widget.equipmentDescription,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kMainBlack,
                ),
              ),
              const SizedBox(height: 10,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                  childAspectRatio: 16/9,
                ),
                itemCount: widget.equipmentsList.length,
                itemBuilder: (context, index) {
                  Equipment equipment = widget.equipmentsList[index];
                  return EquipmentCard(
                    equipmentName: equipment.equipmentName,
                    equipmentDescription: equipment.equipmentDescription,
                    equipmentImageUrl: equipment.equipmentImageUrl,
                    noOfMinutes: equipment.noOfMinutes,
                    caloriesBurned: equipment.caloriesBurned,
                  );
                },
              )
            ]
              
          ),
        ),
      ),
    );

  }
}
