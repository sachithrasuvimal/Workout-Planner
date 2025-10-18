import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userid;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int tatalExerciseCompleted = 0;
  int tatalequipmentsHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentsList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentsList;

  User({
    required this.userid,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentsList,
    required this.favExerciseList,
    required this.favEquipmentsList
  });
 //methodes

 //methode to add new exercise
  void addNewExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  //methode to remove exercise
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //method to add favourite exercise
  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  //method to remove favourite exercise
  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }

  //method to add new equipment
  void addEquipment(Equipment equipment) {
    equipmentsList.add(equipment);
  }

  //method to remove equipment
  void removeEquipment(Equipment equipment) {
    equipmentsList.remove(equipment);
  }

  //method to add favourite equipment
  void addFavEquipment(Equipment equipment) {
    favEquipmentsList.add(equipment);
  }

  //method to remove favourite equipment
  void removeFavEquipment(Equipment equipment) {
    favEquipmentsList.remove(equipment);
  }
}
