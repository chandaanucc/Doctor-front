import 'package:ai_doc_app/modules/welcomescreen/imagecontainers/imagecontainertwo.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class WelcomeScreenTwo extends StatelessWidget {
  const WelcomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
          ),
          const ImagesContainerTwo(),
          const Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  // Add other containers or components below if needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
