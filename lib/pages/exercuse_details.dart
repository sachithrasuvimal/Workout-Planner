import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/exercise_card.dart';

class ExercuseDetails extends StatefulWidget {
  

  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;
  const ExercuseDetails({super.key, required this.exerciseTitle, required this.exerciseDescription, required this.exerciseList, required List<Equipment> equipmentList});

  @override
  State<ExercuseDetails> createState() => _ExercuseDetailsState();
}

class _ExercuseDetailsState extends State<ExercuseDetails> {
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
              widget.exerciseTitle,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kMainBlack,
                  ),
                ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.exerciseDescription,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisSpacing: kDefaultPadding,
                    ),
                    itemCount: widget.exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = widget.exerciseList[index];

                      return ExerciseCard(
                        title: exercise.exerciseName,
                        imageUrl: exercise.exerciseImageUrl,
                        description: "${exercise.noOfMinutes} of WorkOut",
                      );
                    },
                  ),
                
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}

