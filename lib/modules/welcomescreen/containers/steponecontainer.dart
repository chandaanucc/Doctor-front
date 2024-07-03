// ignore_for_file: library_private_types_in_public_api

import 'package:ai_doc_app/modules/welcomescreen/welcometwo.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class StepOneContainer extends StatefulWidget {
  const StepOneContainer({super.key});

  @override
  _StepOneContainerState createState() => _StepOneContainerState();
}

class _StepOneContainerState extends State<StepOneContainer> {
  double age = 0;
  double height = 0;
  double weight = 0;
  String? selectedEthnicity;
  final List<String> ethnicities = ['Asian', 'Black', 'Hispanic', 'White', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 485,
      decoration: BoxDecoration(
        color: AppColors.accentColor, // Change this to your desired accent color
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
            const Text(
              'What is your age?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Slider(
              value: age,
              min: 0,
              max: 100,
              divisions: 100,
              label: age.round().toString(),
              onChanged: (double value) {
                setState(() {
                  age = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your height?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Slider(
              value: height,
              min: 0,
              max: 100,
              divisions: 100,
              label: height.round().toString(),
              onChanged: (double value) {
                setState(() {
                  height = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your weight?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Slider(
              value: weight,
              min: 0,
              max: 100,
              divisions: 100,
              label: weight.round().toString(),
              onChanged: (double value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your ethnicity?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 10), // Add spacing between the question and the dropdown
            Container(
              width: 200,
              height:30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: selectedEthnicity,
                hint: const Text(
                  'Choose from below',
                  style: TextStyle(color: AppColors.accentColor), // Hint text color
                ),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                dropdownColor: Colors.white,
                underline: Container(
                  height: 0,
                  color: Colors.transparent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedEthnicity = newValue;
                  });
                },
                items: ethnicities.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Later action
                  },
                  child: const Text(
                    'Later',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WelcomeScreenTwo()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
                  ),
                  child: const Row(
                    children: [
                      Text('Continue', style: TextStyle(color: Colors.blueGrey)),
                      Icon(Icons.arrow_right, color: Colors.blueGrey),
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
