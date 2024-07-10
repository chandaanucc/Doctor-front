import 'package:flutter/material.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:ai_doc_app/modules/welcomescreen/welcomefive.dart';

class StepFourContainer extends StatefulWidget {
  const StepFourContainer({Key? key}) : super(key: key);

  @override
  _StepFourContainerState createState() => _StepFourContainerState();
}

class _StepFourContainerState extends State<StepFourContainer> {
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
              'Step 4 / 5',
              style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Do you have any existing\nMedication?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.03),
            SizedBox(
              width: screenWidth * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Quick Search',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.02),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              'Illustrative representation\nbased on the data\n\nSimilar to previous screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Examine Later action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.04),
                    minimumSize: Size(screenWidth * 0.35, screenHeight * 0.07), // Adjusted size for responsiveness
                  ),
                  child: Text(
                    'Examine Later',
                    style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                  ),
                ),
                SizedBox(width: screenWidth * 0.02), // Added space between buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreenFive(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentColor,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.04),
                    side: BorderSide(color: Colors.white, width: 2.0),
                    minimumSize: Size(screenWidth * 0.35, screenHeight * 0.07), // Adjusted size for responsiveness
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Continue', style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04)),
                      SizedBox(width: screenWidth * 0.02),
                      Icon(Icons.arrow_right, color: Colors.white, size: screenWidth * 0.05),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
