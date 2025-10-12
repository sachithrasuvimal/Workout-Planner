import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {

  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt(); // 0.3 * 100 = 30
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            kMainColor,
            kMainDarkBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: [
            Text(
              "Proteins,Fats,Water & \nCarbohydrates ",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600   ,
                color: kMainWhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: kMainLightBlueColor,
              valueColor: AlwaysStoppedAnimation(kMainWhite),
              minHeight: 15,
              borderRadius: BorderRadius.circular(10),


            )
          ],
        ),
      ),
    );
  }
}
