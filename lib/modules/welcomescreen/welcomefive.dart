import 'package:ai_doc_app/modules/welcomescreen/welcomefourth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'containers/stepfivecontainer.dart';

class WelcomeScreenFive extends StatelessWidget {
  const WelcomeScreenFive({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () async {
              bool exit = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Exit App'),
                  content: const Text('Are you sure you want to exit the app?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
              if (exit ?? false) {
                SystemNavigator.pop();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.primaryColor,
          child: Stack(
            children: [
              Container(
                height: screenHeight,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
              ),
              Positioned(
                top: screenHeight * 0.0,
                right: 0,
                child: Image.asset(
                  'assets/images/bear.png',
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.25,
                ),
              ),
              Positioned(
                top: screenHeight * 0.02,
                right: screenWidth * 0.00,
                child: Image.asset(
                  'assets/images/white circles.png',
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.3,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.1,
                  screenHeight * 0.15,
                  screenWidth * 0.1,
                  screenHeight * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: screenWidth * 0.08,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing\n and typesetting industry. '
                        'Lorem Ipsum has been the industry’s standard dummy text\n ever since the 1500s, '
                        'when an unknown printer took a galley of type and scrambled it to\n make a type specimen book.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.030,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.2,
                      ),
                      child: LinearProgressIndicator(
                        minHeight: screenHeight * 0.01,
                        value: 5 / 5,
                        backgroundColor: Colors.white,
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Center(child: StepFiveContainer()),
                    SizedBox(height: screenHeight * 0.02),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          TextButton(
                            onPressed: () {
                              // Handle Examine Later action
                            },
                            child: Text(
                              'Examine Later',
                              style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
