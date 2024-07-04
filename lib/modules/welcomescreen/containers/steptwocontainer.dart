// ignore_for_file: library_private_types_in_public_api
import 'package:ai_doc_app/modules/welcomescreen/welcomethree.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class StepTwoContainer extends StatefulWidget {
  const StepTwoContainer({super.key});

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
            const SizedBox(height:60),
            const Text(
              'What is your weight?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 10),
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
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'lbs',
                    style: TextStyle(color: AppColors.accentColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'kgs',
                    style: TextStyle(color: AppColors.accentColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              '$weight ${isLbs ? 'lbs' : 'kgs'}',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Slider(
              value: weight,
              min: 110,
              max: 130,
              divisions: 20,
              label: weight.round().toString(),
              onChanged: (double value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Calculate action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor, // Button color
                  ),
                  child: const Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WelcomeScreenThree())); 
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
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
