import 'package:ai_doc_app/modules/welcomescreen/imagecontainers/imagecontainerthree.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class WelcomeScreenThree extends StatelessWidget {
  const WelcomeScreenThree({super.key});

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
          const ImagesContainerThree(),
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
