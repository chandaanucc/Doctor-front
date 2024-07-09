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
  final List<String> ethnicities = ['Indian', 'American', 'European', 'German', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 500,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Step 1 / 5',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'What is your age?',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 8.0,  // Adjust this value as needed
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      // Adjust the thumb size as needed
                    ),
                    child: Slider(
                      activeColor: AppColors.primaryColor,
                      thumbColor: Colors.white,
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
                  ),
                ),
                const Text('100', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your height?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 8.0,  // Adjust this value as needed
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      // Adjust the thumb size as needed
                    ),
                    child: Slider(
                      activeColor: AppColors.primaryColor,
                      thumbColor: Colors.white,
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
                  ),
                ),
                const Text('100', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your weight?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 8.0,  // Adjust this value as needed
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      // Adjust the thumb size as needed
                    ),
                    child: Slider(
                      activeColor: AppColors.primaryColor,
                      thumbColor: Colors.white,
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
                  ),
                ),
                const Text('100', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'What is your ethnicity?',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 10), // Add spacing between the question and the dropdown
            Center(
              child: Container(
                width: 230,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0), // Add padding here
                  child: DropdownButton<String>(
                    value: selectedEthnicity,
                    hint: const Text(
                      'Choose from below',
                      style: TextStyle(color:Colors.grey), // Hint text color
                    ),
                    icon: const Icon(Icons.expand_more, color: AppColors.accentColor),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    dropdownColor: Colors.white,
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    isDense: true,
                    isExpanded: true, // This ensures the arrow is aligned to the right
                    alignment: Alignment.centerLeft,
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
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreenTwo(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.accentColor, // Button color
                    side: const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  child: const Row(
                    children: [
                      Text('Continue', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_right, color: Colors.white),
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
