import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/add_equipment_card.dart';
import 'package:workout_planner/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  //import the ser from user data
  final userData = user;
  //exercise list
  final exerciseList = ExerciseData().exercisesList;
  final equipmentList = EquipmentData().equipmentList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fullName}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainBlack,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Lets Add some new exercises and equipments for your next workout",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kMainColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kMainBlack,
                  ),
                ),
                SizedBox(height: 10),

                //List view to scroll horizontally
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Exercise exercise = userData.exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        exerciseImagUrl: exercise.exerciseImageUrl,
                        noOFMinutes: exercise.noOfMinutes,
                        isAdded: userData.exerciseList.contains(exercise),
                        isFavourite: userData.favExerciseList.contains(
                          exercise,
                        ),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                            } else {
                              userData.addNewExercise(exercise);
                            }
                          });
                        },
                        toggleaddFavourite: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                            } else {
                              userData.addFavExercise(exercise);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "All Equipments",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kMainBlack,
                  ),
                ),
                SizedBox(height: 15),

                //List view to scroll horizontally
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Equipment equipment = equipmentList[index];
                      return AddEquipmentCard(
                        equipmentName: equipment.equipmentName,
                        equipmentImageUrl: equipment.equipmentImageUrl,
                        equipmentDescription: equipment.equipmentDescription,
                        noOfMinutes: equipment.noOfMinutes,
                        caloriesBurned: equipment.caloriesBurned, toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentsList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                            } else {
                              userData.addEquipment(equipment);
                            }
                          }
                          );
                        }, isAddEquipment: userData.equipmentsList.contains(equipment), toggleAddFavoriteEquipment: () { 
                          setState(() {
                            if (userData.favEquipmentsList.contains(equipment)) {
                              userData.removeFavEquipment(equipment);
                            } else {
                              userData.addFavEquipment(equipment);
                            }
                          }
                          );
                         },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
