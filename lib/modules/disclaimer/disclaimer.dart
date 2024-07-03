import 'package:ai_doc_app/modules/signupscreen/signup.dart';
import 'package:ai_doc_app/modules/welcomescreen/welcome.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class Disclaimer extends StatelessWidget {
  const Disclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 160,
            top: 50,
            child: Image.asset(
              'assets/images/hi.png',
              width: 100,
              height: 100,
            ),
          ),
          // Content centered in the scaffold
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: SingleChildScrollView(
                child: Container(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Disclaimer',
                          style: TextStyle(
                            fontSize: 28,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        // Text(

                        // ),
                        const SizedBox(height: 30),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WelcomeScreen(), 
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryColor),
                            ),
                            child: const Text(
                              'I Agree',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                              // children: [
                              //   Expanded(
                              //     child: Divider(
                              //       color: Colors.grey[400],
                              //       thickness: 0.5,
                              //     ),
                              //   ),
                              //   const SizedBox(width: 10),

                              //   const SizedBox(width: 10),
                              //   Expanded(
                              //     child: Divider(
                              //       thickness: 0.5,
                              //       color: Colors.grey[400],
                              //     ),
                              //   ),
                              // ],
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
