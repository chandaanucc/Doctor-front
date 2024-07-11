





import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate the height for the Long Container
    double longContainerHeight = screenHeight * 0.3; // Adjust the percentage as needed

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('          Home', style: TextStyle(color: Colors.black),),
        
        backgroundColor: Colors.white,
      
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {

         Navigator.of(context).pop(context);
            
            
          },

          

          

          
        ),

        
        
        

        actions: [
         
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Transform.scale(
              scale: 3.7,
              child: Image.asset(
                'assets/images/baymax.png',
                width: 10,
                height: 10,
              ),
            ),
            
          ),


           Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

              
              // Handle back button press
            },

            
                    ),
          ),

         
           
        ],
      ),

      
      body: Stack(
        children: [
          Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.01),
        child: Text(
          "Today",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        
      ),



      
      
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05, horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

               Text("Hi Cruzemortal"),
                 


                  
              
                  // First Grid Container with Hamburger Menu
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // Item 1
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Risk 1',
                                style: TextStyle(color: Colors.white, fontSize: 18.0),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '9072', // Replace with your number or dynamic value
                                style: TextStyle(color: Colors.white, fontSize: 16.0),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        // Item 2
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryColor),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/risk2.png', // Replace with your image path
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Risk2',
                                style: TextStyle(color: Colors.black, fontSize: 18.0),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                '123 km', // Replace with your number or dynamic value
                                style: TextStyle(color: Colors.black, fontSize: 16.0),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Second Grid Container with Long Container
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Long Container
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          padding: EdgeInsets.all(16.0),
                          height: longContainerHeight * 0.5, // Adjusted height
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Heart Image and Text "Heart Rate"
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/heart.png', // Replace with your heart image path
                                    width: 40,
                                    height: 40,
                                  ),

                                  SizedBox(width: 8),
                                  
                                   // Add some spacing between the image and text
        Text(
          'ℍ𝕖𝕒𝕣𝕥 ℝ𝕒𝕥𝕖', // Replace with your desired text
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    ),

                                  
                                  // SizedBox(height: 5),
                                  // Text(
                                  //   '',
                                  //   style: TextStyle(color: Colors.white, fontSize: 16.0),
                                  // ),
                                  // SizedBox(height: 10),
                                  // Text(
                                  //   '', // Replace with your additional text
                                  //   style: TextStyle(color: Colors.white, fontSize: 16.0),
                                  // ),
                              
                              Spacer(),
                              // Pulse Image
                              Image.asset(
                                'assets/images/pulse.png', // Replace with your pulse image path
                                width: 60,
                                height: 60,
                              ),
                            ],
                          ),
                        ),

                        // Additional Containers in Grid Format
                        GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 15.0,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            // Container 3
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/calory.png', // Replace with your image path
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Calories',
                                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '993 h', // Replace with your additional text
                                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),


                            //container4
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/sleep.png', // Replace with your image path
                                    width: 50,
                                    height: 50,
                                  ),
                                  Image.asset("assets/images/lines.png"),
                                  SizedBox(height: 5),
                                  Text(
                                    '9:43', // Replace with your number or dynamic value
                                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            
                            // Container 5
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/yoga.png', // Replace with your image path
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Yoga',
                                    style: TextStyle(color: AppColors.primaryColor, fontSize: 18.0),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '5:30 h', // Replace with your number or dynamic value
                                    style: TextStyle(color: AppColors.primaryColor, fontSize: 16.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            // Container 6
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/fitness.png', // Replace with your image path
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'fitness',
                                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '9:43', // Replace with your number or dynamic value
                                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned widget for Chatbot Image with GestureDetector
          Positioned(
            bottom: screenHeight * 0.10, 
            left: screenWidth * 0.5 - 40, // Center horizontally
            child: GestureDetector(
              onTap: () {
                // _showPopupCard(context); // Call your popup function here
              },
              // child: Image.asset(
              //   '', // Replace with your image path
              //   width: 80,
              //   height: 80,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
 


//  void _showPopupCard(BuildContext context) {
//   final screenWidth = MediaQuery.of(context).size.width;
//   final screenHeight = MediaQuery.of(context).size.height;

//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Dialog(
//         insetPadding: EdgeInsets.symmetric(horizontal: 0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(20.0),
//           child: Container(
//             width: screenWidth * 0.92,
//             height: screenHeight * 0.69,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 ClipPath(
//                   clipper: WaveClipperTwo(),
//                   child: Container(
//                     height: screenHeight * 0.2, // Adjusted height using screen height
//                     width: double.infinity,
//                     color: AppColors.primaryColor,
//                     padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
//                     child: Stack(
//                       children: <Widget>[
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Transform.scale(
//                             scale: 1.5,
//                             child: Container(
//                               height: screenHeight * 0.3,
//                               alignment: Alignment.bottomCenter,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: AppColors.primaryColor,
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(right: 160),
//                                 child: Image.asset(
//                                   'assets/images/baymax2.png',
//                                   height: screenHeight * 0.9,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(top: screenHeight * 0.02),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "                                   I am Baymax",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.normal,
//                                       color: AppColors.textColor,
//                                     ),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                    Spacer(),
//                                   IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,)),
                                  
                                  
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.of(context).pop();
//                                     },
//                                     child: Image.asset(
//                                       'assets/images/keyboard.png',
//                                       width: 54,
//                                       height: 54,
//                                       color: AppColors.textColor,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: screenWidth * 0.1),
//                               child: Text(
//                                 "                     Your healthcare",
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.normal,
//                                   color: AppColors.textColor,
//                                 ),
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: screenWidth * 0.1, right: screenWidth * 0.2),
//                               child: Text(
//                                 "                      Companion",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: AppColors.textColor,
//                                 ),
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Positioned(
//                           right: -50,
//                           top: -50,
//                           left: -50,
//                           child: Text(
//                             'Top Chat',
//                             style: TextStyle(color: Colors.white, fontSize: 18),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: screenHeight * 0.02),

//                 // Your other containers and widgets
//                 Padding(
//                   padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.07),
//                   child: Container(
//                     height: screenHeight * 0.06,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Lorem ipsum dolor sit amet consect?',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),




//                 SizedBox(height: screenHeight * 0.03),

//                 // Another container example
//                 Padding(
//                   padding: EdgeInsets.only(left: screenWidth * 0.1, right: screenWidth * 0.05),
//                   child: Container(
//                     height: screenHeight * 0.06,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.grey
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Lorem ipsum dolor sit amet consect?',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),


//                 SizedBox(height: screenHeight * 0.03),
//                 Padding(
//                   padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.09),
//                   child: Container(
//                     height: screenHeight * 0.06,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Lorem ipsum dolor sit amet consect?',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                         SizedBox(height: screenHeight * 0.02),
//                 Padding(
//                   padding: EdgeInsets.only(left: screenWidth * 0.07, right: screenWidth * 0.05),
//                   child: Container(
//                     height: screenHeight * 0.06,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.grey
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Lorem ipsum dolor sit amet consect?',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),


//                 SizedBox(height: screenHeight * 0.01),

//                 Divider(
//                   height: 20.0,
//   thickness: 3.0,
//   color: Colors.white,
//   indent: 25.0,
//   endIndent: 25.0,

//                 ),

//                 // Message input section

               
               
//                 SizedBox(height: screenHeight * 0.01),
//                 Container(
//                   padding: EdgeInsets.only(left: screenWidth * 0.07, right: screenWidth * 0.09),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Enter your message",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                           padding: EdgeInsets.only(left: screenWidth * 0.07, right: screenWidth * 0.09),
//                             height: 60,
//                             width: 60,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.primaryColor,
//                             ),
//                             child: Align(child: Icon(Icons.send, size: 30, color: Colors.white)),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }



