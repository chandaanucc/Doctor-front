import 'package:flutter/material.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import '../welcometwo.dart';

class StepOneContainer extends StatefulWidget {
  const StepOneContainer({Key? key}) : super(key: key);

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.8, // 80% of screen width
      padding: EdgeInsets.all(screenWidth * 0.05),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Step 1 / 5',
                style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'What is your age?',
              style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: screenHeight * 0.015,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: screenWidth * 0.03),
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
            SizedBox(height: screenHeight * 0.03),
            Text(
              'What is your height?',
              style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: screenHeight * 0.015,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: screenWidth * 0.03),
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
            SizedBox(height: screenHeight * 0.03),
            Text(
              'What is your weight?',
              style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
            ),
            Row(
              children: [
                const Text('0', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: screenHeight * 0.015,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: screenWidth * 0.03),
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
            SizedBox(height: screenHeight * 0.03),
            Text(
              'What is your ethnicity?',
              style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.015),
            Center(
              child: Container(
                width: screenWidth * 0.65, // 65% of screen width
                height: screenHeight * 0.035, // Adjusted height for dropdown
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(screenHeight * 0.01),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedEthnicity,
                      hint: Text(
                        'Choose from below',
                        style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.03),
                      ),
                      icon: Icon(Icons.expand_more, color: AppColors.accentColor, size: screenWidth * 0.06),
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.04),
                      dropdownColor: Colors.white,
                      underline: Container(
                        height: 0,
                        color: Colors.transparent,
                      ),
                      isDense: true,
                      isExpanded: true,
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
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  constraints: const BoxConstraints(minWidth: 120),
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreenTwo(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.accentColor,
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                          style: TextStyle(color: Colors.white),
                        ),
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
