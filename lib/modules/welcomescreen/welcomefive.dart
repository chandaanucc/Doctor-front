import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'containers/stepfivecontainer.dart';
import 'welcomefourth.dart'; // Ensure this import points to the correct location of your WelcomeScreenFour

class WelcomeScreenFive extends StatelessWidget {
  const WelcomeScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), // Reduced height for the app bar
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
          scrolledUnderElevation: 0,
          iconTheme: const IconThemeData(color: Colors.white), // Set icon color to white
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
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
              icon: const Icon(Icons.close),
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
                top: screenHeight * 0.04,
                right: 0,
                child: Image.asset(
                  'assets/images/bear.png',
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.25,
                ),
              ),
              Positioned(
                top: screenHeight * 0.07,
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
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Cruzemortal',
                      style: TextStyle(
                        fontSize: screenWidth * 0.09,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'I am Baymax,\n\nYour health care companion',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'In order for me to assist you\nplease let me your details below....',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.2,
                      ),
                      child: LinearProgressIndicator(
                        minHeight: 10,
                        value: 5 / 5,
                        backgroundColor: Colors.white,
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(child: StepFiveContainer()),
                    SizedBox(height: 20),
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
