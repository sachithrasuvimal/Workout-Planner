import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart' as UserData;
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
                      ExerciseCard(
                        title: "Wormup", 
                        imageUrl: "assets/exercises/pilates_1850484.png",
                        description: "more"
                        ),
                  
                        ExerciseCard(
                        title: "Wormup", 
                        imageUrl: "assets/equipments/stationery-bicycle_3485915.png",
                        description: "more"
                        )
                    ],
                  ),
                const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseCard(
                        title: "Wormup", 
                        imageUrl: "assets/exercises/pilates_1850484.png",
                        description: "more"
                        ),
                  
                        ExerciseCard(
                        title: "Wormup", 
                        imageUrl: "assets/equipments/stationery-bicycle_3485915.png",
                        description: "more"
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

class Const {
}
