import 'package:flutter/material.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:ai_doc_app/modules/welcomescreen/welcomethree.dart';

class StepTwoContainer extends StatefulWidget {
  const StepTwoContainer({Key? key}) : super(key: key);

  @override
  _StepTwoContainerState createState() => _StepTwoContainerState();
}

class _StepTwoContainerState extends State<StepTwoContainer> {
  double weight = 120;
  bool isLbs = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      constraints: BoxConstraints(minWidth: screenWidth * 0.75),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: screenWidth * 0.02,
            blurRadius: screenWidth * 0.05,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Step 2 / 5',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.02),
            const Text(
              'What is your weight?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.02),
            ToggleButtons(
              borderColor: Colors.white,
              fillColor: Colors.white,
              borderWidth: screenWidth * 0.005,
              selectedBorderColor: Colors.white,
              selectedColor: AppColors.accentColor,
              borderRadius: BorderRadius.circular(screenWidth * 0.04),
              isSelected: [isLbs, !isLbs],
              onPressed: (int index) {
                setState(() {
                  isLbs = index == 0;
                });
              },
              children: <Widget>[
                Container(
                  color: isLbs ? Colors.white : AppColors.accentColor,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    'lbs',
                    style: TextStyle(
                      color: isLbs ? AppColors.accentColor : Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: !isLbs ? Colors.white : AppColors.accentColor,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    'kgs',
                    style: TextStyle(
                      color: !isLbs ? AppColors.accentColor : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$weight',
                  style: TextStyle(
                    fontSize: screenWidth * 0.16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' ${isLbs ? 'lbs' : 'kgs'}',
                  style: TextStyle(
                    fontSize: screenWidth * 0.08,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: screenHeight * 0.01,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: screenWidth * 0.04),
                overlayShape: RoundSliderOverlayShape(overlayRadius: screenWidth * 0.06),
              ),
              child: Slider(
                value: weight,
                min: 20,
                max: 130,
                divisions: 110,
                label: weight.round().toString(),
                activeColor: AppColors.primaryColor,
                thumbColor: Colors.white,
                onChanged: (double value) {
                  setState(() {
                    weight = value;
                  });
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(minWidth: screenWidth * 0.3),
                    height: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenHeight * 0.05),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.primaryColor,
                          Colors.white,
                        ],
                        stops: [0.615, 0.5],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add your calculate risk functionality
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(screenHeight * 0.015),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Calculate ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                            TextSpan(
                              text: 'Risk',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.02), // Added space
                Container(
                  constraints: BoxConstraints(minWidth: screenWidth * 0.3),
                  height: screenHeight * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreenThree(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accentColor,
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Continue', style: TextStyle(color: Colors.white)),
                        Icon(Icons.arrow_right, color: Colors.white),
                      ],
                    ),
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
