import 'package:ai_doc_app/modules/welcomescreen/containers/stepfourcontainer.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagesContainerFour extends StatelessWidget {
  const ImagesContainerFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const Positioned(
                  top: 100,
                  right:100,
                  left: 60,
                  child: Text('Welcome !',style:TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                const Positioned(
                  top: 160,
                  right:100,
                  left: 60,
                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n'
                  ' Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n',style:TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.normal)),
                ),
          Positioned(
            top: 10,
            right: 1,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/white circles.png',
                  width: 200,
                  height: 200,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Image.asset(
                    'assets/images/bear.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          
          const Positioned(
            top: 200,
            left: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:90),
                Text(
                  'Step 4 out of 6',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 5),
                Positioned(
                  child: SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(
                      value: 4 / 6,
                      backgroundColor: Colors.white,
                      color: AppColors.accentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 350, // Adjust this position as needed
            left: 50,
            right:50,
            child: StepFourContainer(), // Placing StepOneContainer below the step indicator
          ),
        ],
    );
  }
}
