// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:ai_doc_app/modules/welcomescreen/welcomethree.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class StepTwoContainer extends StatefulWidget {
  const StepTwoContainer({Key? key});

  @override
  _StepTwoContainerState createState() => _StepTwoContainerState();
}

class _StepTwoContainerState extends State<StepTwoContainer> {
  double weight = 120;
  bool isLbs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 485,
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Step 2 / 5',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              'What is your weight?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ToggleButtons(
              borderColor: Colors.white,
              fillColor: Colors.white,
              borderWidth: 2,
              selectedBorderColor: Colors.white,
              selectedColor: AppColors.accentColor,
              borderRadius: BorderRadius.circular(8),
              isSelected: [isLbs, !isLbs],
              onPressed: (int index) {
                setState(() {
                  isLbs = index == 0;
                });
              },
              children: <Widget>[
                Container(
                  color: isLbs ? Colors.white : AppColors.accentColor,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'lbs',
                    style: TextStyle(
                      color: isLbs ? AppColors.accentColor : Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: !isLbs ? Colors.white : AppColors.accentColor,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'kgs',
                    style: TextStyle(
                      color: !isLbs ? AppColors.accentColor : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center-align the children
                children: [
                  Text(
                    '$weight',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\t ${isLbs ? 'lbs' : 'kgs'}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 8.0,  // Adjust this value as needed
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120, // Fixed width
                  height: 35, // Fixed height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // More rounded corners
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        Colors.white,
                      ],
                      stops: [0.63, 0.5],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Calculate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: ' Risk',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreenThree(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(120, 35), // Fixed size
                  ),
                  child: const Row(
                    children: [
                      Text('Continue', style: TextStyle(color: AppColors.accentColor)),
                      Icon(Icons.arrow_right, color: AppColors.accentColor),
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
