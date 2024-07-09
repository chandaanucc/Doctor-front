import 'package:ai_doc_app/modules/welcomescreen/welcomefourth.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'containers/stepfivecontainer.dart';
import 'containers/stepfourcontainer.dart';

class WelcomeScreenFive extends StatelessWidget {
  const WelcomeScreenFive({super.key});

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
                                    builder: (context) => const WelcomeScreenFour(),
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
                top: 180,
                right: 100,
                left: 60,
                child: Text(
                  'Above Layouts can be customised \n based on detail below with creative writings...\n'
                  ,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 298,
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
                          value: 5 / 5,
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
                child: StepFiveContainer(),
              ),
              Positioned(
                top: 800, // Positioning for the "OR" and "Examine Later"
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const Text(
                      'OR',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        // Handle Examine Later action
                      },
                      child: const Text(
                        'Examine Later',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
