import 'package:workout_planner/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exercisesList = [
    Exercise(
      id: 0,
      exerciseName: 'abs exercises',
      exerciseImageUrl: '/Users/apple/Desktop/Workout Planner/assets/exercises/exercises_384159.png',
      noOfMinutes: 20,
      isCompleted: false,
    ),
    Exercise(
      id: 1,
      exerciseName: 'wormup exercises',
      exerciseImageUrl: '/Users/apple/Desktop/Workout Planner/assets/exercises/pilates_1850484.png',
      noOfMinutes: 10,
      isCompleted: false,
    ),
    Exercise(
      id: 2,
      exerciseName: 'run',
      exerciseImageUrl: '/Users/apple/Desktop/Workout Planner/assets/exercises/treadmill_2382646.png',
      noOfMinutes: 20,
      isCompleted: false,
    ),
    Exercise(
      id: 3,
      exerciseName: 'weightlifting',
      exerciseImageUrl: '/Users/apple/Desktop/Workout Planner/assets/exercises/weightlifting_7198833.png',
      noOfMinutes: 15,
      isCompleted: false,
    ),
  ];
}