import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart' as UserData;
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/equipment_card.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
    //Date and time
  final DateFormat formatter = DateFormat('EEEE-MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  // user data
  final userData = UserData.user;
  @override
  Widget build(BuildContext context) {
    String formattedDate = formatter.format(DateTime.now());
    String formatterDay = dayFormat.format(DateTime.now());
    return Scaffold(
     body: SafeArea(

       child: SingleChildScrollView(
        child: Padding (
          padding: const EdgeInsets.all(8.0),
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
                userData.fullName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kMainBlack,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Favourites is empty and will be updated soon",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kMainBlack,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: 1.5

              ), 
              itemBuilder: (context, index) {
                Exercise favExercise = userData.favExerciseList[index];
                return Card(
                  color: kSubTitleColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                    children: [
                      Text(favExercise.exerciseName,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kMainBlack,
                      ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(favExercise.exerciseImageUrl,
                      width: 100,
                      fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(favExercise.noOfMinutes.toString() + " minutes",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kMainBlack,
                      ))
                    ],
                                    ),
                  )
                );
              },
              ),
              const SizedBox(height: 10),
              Text(
                "Favourites is empty and will be updated soon",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kMainBlack,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: 1.5

              ), 
              itemBuilder: (context, index) {
                Exercise favEquipment = userData.favExerciseList[index];
                return Card(
                  color: kSubTitleColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                    children: [
                      Text(favEquipment.equipmentName,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kMainBlack,
                      ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(favEquipment.
                      equipmentImageUrl,
                      width: 100,
                      fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        favEquipment.noOfMinutes.toString() + " minutes",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kMainBlack,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                                    ),
                  )
                );
              },
              ),
            ],
        ),
      )
       ),
     )
    );
  }
}