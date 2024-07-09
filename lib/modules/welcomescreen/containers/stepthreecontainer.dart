// ignore_for_file: library_private_types_in_public_api

import 'package:ai_doc_app/modules/welcomescreen/welcomefourth.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      height: 490,
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
            const Text(
              'Step 3 / 5',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Do you have any existing\n conditions that I should be aware?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: <Widget>[
                _buildConditionCard('assets/icons/heart.png', 'Heart'),
                _buildConditionCard('assets/icons/glucose.png', 'Glucose'),
                _buildConditionCard('assets/icons/fire.png', 'Fire'),
                _buildConditionCard('assets/icons/gastro.png', 'Gastro'),
                _buildConditionCard('assets/icons/urologist.png', 'Urologist'),
                _buildConditionCard('assets/icons/neurologist.png', 'Neurologist'),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding:EdgeInsets.only(left:14),
              child: Align(alignment:Alignment.centerLeft,child: Text('Others', style: TextStyle(fontSize: 15, color:Colors.white ),))),
            const SizedBox(height:5),
            const SizedBox(
              width:250,
              height:35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Quick Search',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Later action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor
                  ),
                  child: const Text(
                    'Examine Later',
                    style: TextStyle(color: Colors.white),
                  )
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreenFour(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentColor,
                    side: const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  child: const Row(
                    children: [
                      Text('Continue', style: TextStyle(color: Colors.white)),
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

  Widget _buildConditionCard(String iconPath, String title) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(4.0), // Minimal padding
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              iconPath,
              width: 40, // Reduced icon size
              height: 40,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10, // Reduced font size
                color: AppColors.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
