import 'package:ai_doc_app/modules/loginscreen/login.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  height: 500,
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
                        const SizedBox(height: 20),
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 28,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: AppColors.textColor,
                            hintStyle: TextStyle(color: AppColors.textColor),
                            labelText: 'Email or Phone',
                            labelStyle: TextStyle(color: AppColors.textColor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.white,
                            hintStyle: TextStyle(color: AppColors.textColor),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                          ),
                        ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryColor),
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey[400],
                                  thickness: 0.5,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Or Continue With",
                                style: TextStyle(color: AppColors.textColor),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/fb.png', // Background image
                                  height: 50,
                                  width: 50,
                                ),
                                Image.asset(
                                  'assets/images/facebook.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/goog.png', // Background image
                                  height: 50,
                                  width: 50,
                                ),
                                Image.asset(
                                  'assets/images/google.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: AppColors.textColor),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60,
            right: 60,
            bottom: 90,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Do you have a code from Hospital?',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 290,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
