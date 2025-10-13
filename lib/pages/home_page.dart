import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
// ignore: library_prefixes
import 'package:workout_planner/data/user_data.dart' as UserData;
import 'package:workout_planner/pages/equiments_page.dart';
import 'package:workout_planner/pages/exercuse_details.dart';
import 'package:workout_planner/widgets/exercise_card.dart';
import 'package:workout_planner/widgets/progress_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Date and time
  final DateFormat formatter = DateFormat('EEEE-MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  // user data
  final userData = UserData.user;

  final exerciseList = ExerciseData().exercisesList;
  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kSubTitleColor,
                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  "Hello ${userData.fullName}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kMainBlack,
                  ),
                ),

                const SizedBox(height: 10),
                ProgressCard(progressValue: 0.5, total:100,),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Today's workouts",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: kMainBlack,
                  ),
                ),
                const SizedBox(height: 10),
                
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  ExercuseDetails(
                            exerciseTitle: "Wormup",
                            exerciseDescription: "A warm-up (also written as warmup or warm up) refers to a preparatory activity or procedure intended to get something or someone ready for more strenuous activity.",
                            exerciseList: exerciseList,
                            equipmentList: equipmentList,
                          ),
                          ),
                          );
                        },
                        child: 
                            const ExerciseCard(
                              title: "Wormup", 
                              imageUrl: "assets/exercises/weightlifting_7198833.png",
                              description: "more"
                              ),
                           ),

                            
                           GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  EquimentsDetailsPage(
                                equipmentTitle: "equipment",
                                equipmentDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                equipmentList: equipmentList,
                                equipmentsList: equipmentList,
                              ),
                              ),
                              );
                            },
                             child: ExerciseCard(
                              title: "equipment", 
                              imageUrl: "assets/equipments/stationery-bicycle_3485915.png",
                              description: "more"
                              ),
                           ),
                            
                         
                    ],
                  ),
                const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ExercuseDetails(
                            exerciseTitle: "Exercise",
                            exerciseDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            exerciseList: exerciseList,
                            equipmentList: equipmentList,
                          ),
                          ),
                          );
                        },
                        child: ExerciseCard(
                          title: "Exercise", 
                          imageUrl: "assets/exercises/pilates_1850484.png",
                          description: "more"
                          ),
                      ),
                  
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  ExercuseDetails(
                              exerciseTitle: "Stretching",
                              exerciseDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              exerciseList: exerciseList,
                              equipmentList: equipmentList,
                            ),
                            )
                            );
                          },
                          child: ExerciseCard(
                          title: "Stretching", 
                          imageUrl: "assets/equipments/stationery-bicycle_3485915.png",
                          description: "more"
                          ),
                        )
                    ],
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

