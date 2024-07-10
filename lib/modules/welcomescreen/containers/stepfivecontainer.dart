// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:ai_doc_app/theme/app_color.dart';

import '../../bottombar/bottombar.dart';

class StepFiveContainer extends StatelessWidget {
  const StepFiveContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.8, // Adjusted width for responsiveness
      height: screenHeight * 0.6, // Adjusted height for responsiveness
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05), // Adjusted padding for responsiveness
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Step 5 / 5',
              style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.1), // Adjusted height for spacing
            Text(
              'Analysis on your health based on your inputs\n\n Loading illustrations...',
              style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.15), // Adjusted height for spacing
            ElevatedButton(
              onPressed: () {

                Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomBar()
         )
         );
                // Handle Calculate Risk action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03, horizontal: screenWidth * 0.05),
                minimumSize: Size(screenWidth * 0.7, screenHeight * 0.07), // Adjusted size for responsiveness
              ),
              child: Text(
                'Calculating Risk based on your inputs',
                style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
