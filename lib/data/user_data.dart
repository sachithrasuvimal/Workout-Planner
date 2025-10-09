import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';

User user = User(
  userid: "1",
  fullName: "John Doe",
  gender: "Male",
  address: "123 Main St",
  age: 30,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  exerciseList: [
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

  ],
  equipmentsList: [
    Equipment(
    id: 0, 
    equipmentName: "dumbbells", 
    equipmentDescription: "dumbbellsDescription", 
    equipmentImageUrl: "/Users/apple/Desktop/Workout Planner/assets/equipments/dumbbell.png", 
    noOfMinutes: 30, 
    caloriesBurned: 300, 
    handOvered: false),

    Equipment(
    id: 1, 
    equipmentName: "leg press", 
    equipmentDescription: "dumbbellsDescription", 
    equipmentImageUrl: "/Users/apple/Desktop/Workout Planner/assets/equipments/leg-press_7922179.png", 
    noOfMinutes: 30, 
    caloriesBurned: 300, 
    handOvered: false),

    Equipment(
    id: 2, 
    equipmentName: "skipping", 
    equipmentDescription: "dumbbellsDescription", 
    equipmentImageUrl: "/Users/apple/Desktop/Workout Planner/assets/equipments/skipping-rope.png", 
    noOfMinutes: 30, 
    caloriesBurned: 300, 
    handOvered: false),
  ],

  favExerciseList: [
    Exercise(
      id: 0,
      exerciseName: 'abs exercises',
      exerciseImageUrl: '/Users/apple/Desktop/Workout Planner/assets/exercises/exercises_384159.png',
      noOfMinutes: 20,
      isCompleted: false,
    ),
    ],

    
  favEquipmentsList: [
    Equipment(
    id: 1, 
    equipmentName: "leg press", 
    equipmentDescription: "dumbbellsDescription", 
    equipmentImageUrl: "/Users/apple/Desktop/Workout Planner/assets/equipments/leg-press_7922179.png", 
    noOfMinutes: 30, 
    caloriesBurned: 300, 
    handOvered: false),
  ],
  
);
