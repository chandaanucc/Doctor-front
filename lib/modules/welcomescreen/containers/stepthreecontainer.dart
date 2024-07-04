// ignore_for_file: library_private_types_in_public_api


import 'package:ai_doc_app/modules/welcomescreen/welcomefourth.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class StepThreeContainer extends StatefulWidget {
  const StepThreeContainer({super.key});

  @override
  _StepThreeContainerState createState() => _StepThreeContainerState();
}

class _StepThreeContainerState extends State<StepThreeContainer> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Do you have any existing\n conditions that I should be aware?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  _buildConditionCard('assets/icons/heart.png', 'Heart related'),
                  _buildConditionCard('assets/icons/glucose.png', 'Glucose'),
                  _buildConditionCard('assets/icons/fire.png', 'Other'),
                  _buildConditionCard('assets/icons/gastro.png', 'Gastroenterologist'),
                  _buildConditionCard('assets/icons/urologist.png', 'Urologist'),
                  _buildConditionCard('assets/icons/neurologist.png', 'Neurologist'),
                ],
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Quick Search',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle Later action
                    },
                    child: const Text(
                      'Examine Later',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WelcomeScreenFour())); 
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
      ),
    );
  }

  Widget _buildConditionCard(String iconPath, String title) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              iconPath,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
