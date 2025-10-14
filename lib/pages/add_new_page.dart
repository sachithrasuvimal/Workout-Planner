import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userData = user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding), 
          
          child: SingleChildScrollView(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              "Hello, ${userData.fullName}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kMainBlack
              ),
              ),
              SizedBox(height: 10,),
              Text(
              "Lets Add some new exercises and equipments for your next workout",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kMainColor
              ),
              ),
               SizedBox(height: 10,),
              Text(
              "All Exercises",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: kMainBlack
              ),
              ),
              SizedBox(height: 10,),
              
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
                  );
                }
                ),
              ),
            ],
          )
          ),
        )
        ),
    );
  }
}
