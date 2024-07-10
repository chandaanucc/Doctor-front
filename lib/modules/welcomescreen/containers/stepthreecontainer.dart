import 'package:flutter/material.dart';
import 'package:ai_doc_app/modules/welcomescreen/welcomefourth.dart';
import 'package:ai_doc_app/theme/app_color.dart';

class StepThreeContainer extends StatefulWidget {
  const StepThreeContainer({Key? key}) : super(key: key);

  @override
  _StepThreeContainerState createState() => _StepThreeContainerState();
}

class _StepThreeContainerState extends State<StepThreeContainer> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.8,
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
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Step 3 / 5',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.white,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Do you have any existing\n conditions that I should be aware?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.white,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: screenWidth * 0.02,
              mainAxisSpacing: screenWidth * 0.02,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: <Widget>[
                _buildConditionCard('assets/icons/heart.png', 'Heart'),
                _buildConditionCard('assets/icons/glucose.png', 'Glucose'),
                _buildConditionCard('assets/icons/fire.png', 'Fire'),
                _buildConditionCard('assets/icons/gastro.png', 'Gastro'),
                _buildConditionCard('assets/icons/urologist.png', 'Urologist'),
                _buildConditionCard('assets/icons/neurologist.png', 'Neurology'),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.04),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Others',
                  style: TextStyle(
                    fontSize: screenWidth * 0.038,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            SizedBox(
              width: screenWidth * 0.7,
              height: screenHeight * 0.05,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Quick Search',
                  hintStyle: TextStyle(fontSize: screenWidth * 0.035),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search, size: screenWidth * 0.05),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.025)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.03,
                  ),
                ),
                style: TextStyle(fontSize: screenWidth * 0.035),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildButton(
                  context,
                  'Examine Later',
                  AppColors.primaryColor,
                  Colors.white,
                  screenWidth * 0.3,
                  false,
                ),
                SizedBox(width: screenWidth * 0.02),
                _buildButton(
                  context,
                  'Continue',
                  AppColors.accentColor,
                  Colors.white,
                  screenWidth * 0.3,
                  true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConditionCard(String iconPath, String title) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
      ),
      margin: EdgeInsets.all(screenWidth * 0.02),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.01),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              iconPath,
              width: screenWidth * 0.1,
              height: screenWidth * 0.1,
            ),
            SizedBox(height: screenWidth * 0.01),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                color: AppColors.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color bgColor, Color textColor, double buttonWidth, bool navigateToNextScreen) {
    return SizedBox(
      width: buttonWidth,
      height: screenHeight * 0.06,
      child: ElevatedButton(
        onPressed: navigateToNextScreen
            ? () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreenFour(),
                  ),
                );
              }
            : () {
                // Handle Later action
              },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
          backgroundColor: bgColor,
          side: navigateToNextScreen
              ? BorderSide(color: textColor, width: buttonWidth * 0.01)
              : null,
          textStyle: TextStyle(
            fontSize: screenWidth * 0.035,
          ),
        ),
        child: navigateToNextScreen
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text, style: TextStyle(fontSize: screenWidth * 0.035, color: textColor)),
                  Icon(Icons.arrow_right, color: textColor, size: screenWidth * 0.035),
                ],
              )
            : FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(text, style: TextStyle(fontSize: screenWidth * 0.035, color: textColor)),
              ),
      ),
    );
  }
}
