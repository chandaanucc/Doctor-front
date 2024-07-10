import 'package:ai_doc_app/modules/welcomescreen/welcometwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/app_color.dart';
import 'containers/stepthreecontainer.dart';

class WelcomeScreenThree extends StatelessWidget {
  const WelcomeScreenThree({Key? key}) : super(key: key);

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
                builder: (context) => const WelcomeScreenTwo(),
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
                top: screenHeight * 0.02,
                right: 0,
                child: Image.asset(
                  'assets/images/bear.png',
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.25,
                ),
              ),
              Positioned(
                top: screenHeight * 0.04,
                right: 0,
                child: Image.asset(
                  'assets/images/white circles.png',
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.3,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.1,
                  screenHeight * 0.1, // Reduced vertical padding
                  screenWidth * 0.1,
                  20,
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
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.2,
                      ),
                      child: LinearProgressIndicator(
                        minHeight: 10,
                        value: 3 / 5,
                        backgroundColor: Colors.white,
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(child: StepThreeContainer()),
                    const SizedBox(height: 20),
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
