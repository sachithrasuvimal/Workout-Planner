import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImagUrl;
  final int noOFMinutes;
  final bool isAdded;
  final bool isFavourite;
  final void Function() toggleAddExercise;
  final void Function() toggleaddFavourite;

  const AddExerciseCard({
    super.key,
    required this.exerciseTitle,
    required this.noOFMinutes,
    required this.exerciseImagUrl,
    required this.toggleAddExercise, required this.isAdded, required this.toggleaddFavourite, required this.isFavourite,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: kCardBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
          ), //boxShadow
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            widget.exerciseTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),

          Image.asset(widget.exerciseImagUrl, width: 100, fit: BoxFit.cover),

          SizedBox(height: 10),

          Text(
            "${widget.noOFMinutes} minuites7",
            style: TextStyle(fontSize: 16, color: kSubTitleColor),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleAddExercise();
                      },
                      icon: Icon(
                        widget.isAdded ? Icons.remove : Icons.add,
                        color: kMainDarkBlue, 
                        size: 20),
                    ),
                  ),
                ),

                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleaddFavourite();
                      },
                      icon: Icon(
                        widget.isFavourite ? Icons. favorite : Icons.favorite_border,
                        color: kMainpurpleColoer,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
