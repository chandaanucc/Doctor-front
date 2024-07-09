import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../disclaimer/disclaimer.dart';
import 'containers/steponecontainer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
           Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Disclaimer(),
                                  ),
                                );
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
          ),
          Stack(
            children: [
              const Positioned(
                top: 100,
                right: 100,
                left: 60,
                child: Text(
                  'Welcome !',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                top: 160,
                right: 100,
                left: 60,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n'
                  ' Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left:298,
                right: 0,
                child: Stack(
                  children: [
                    
                    Positioned(
                      top: 10,
                      right: 0,
                      
                      child: Image.asset(
                        'assets/images/bear.png',
                        width: 100,
                        height: 190,
                      ),
                    ),
                    Image.asset(
                      'assets/images/white circles.png',
                      width: 200,
                      height: 250,
                    ),
                  ],
                ),
              ),
              Positioned(
            top: 200,
            left: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: const LinearProgressIndicator(
                      minHeight: 10,
                      value: 1 / 5,
                      backgroundColor: Colors.white,
                      color: AppColors.accentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 350, 
            left: 50,
            right: 50,
            child: StepOneContainer(), 
          ),
            ]
      ),]
    ));
  }
}
