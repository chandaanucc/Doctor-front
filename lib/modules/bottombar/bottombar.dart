


import 'package:ai_doc_app/modules/BottomTabs/Home.dart';
import 'package:ai_doc_app/modules/BottomTabs/Medication.dart';
import 'package:ai_doc_app/modules/BottomTabs/appointment.dart';
import 'package:ai_doc_app/modules/BottomTabs/healthdevices.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Home(),
    Medication(),
    healthdevices(),
    appointment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 28.0, top: 28), // Adjust as necessary
        child: SizedBox(
          width: 40,
          height: 40,
          child: GestureDetector(
            onTap: () {
        // Handle onTap action here
        print('Image tapped');
         _showPopupCard(context);

      },
            child: Image.asset("assets/images/baymax1.png",)),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: AppColors.primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _selectTab(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/home.png',
                    width: 24,
                    color: currentIndex == 0 ? Colors.pinkAccent : Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: currentIndex == 0 ? Colors.pinkAccent : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24), // Adjust the width as per your requirement
            GestureDetector(
              onTap: () => _selectTab(1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/medications.png',
                    width: 24,
                    color: currentIndex == 1 ? Colors.pinkAccent : Colors.white,
                  ),
                  Text(
                    "Medications",
                    style: TextStyle(
                      color: currentIndex == 1 ? Colors.pinkAccent : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24), // Adjust the width as per your requirement
            GestureDetector(
              onTap: () => _selectTab(2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/healthdevices.png',
                    width: 24,
                    color: currentIndex == 2 ? Colors.pinkAccent : Colors.white,
                  ),
                  Text(
                    "Health Devices",
                    style: TextStyle(
                      color: currentIndex == 2 ? Colors.pinkAccent : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 5), // Adjust the width as per your requirement
            GestureDetector(
              onTap: () => _selectTab(3),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/appointment.png',
                    width: 24,
                    color: currentIndex == 3 ? Colors.pinkAccent : Colors.white,
                  ),
                  Text(
                    "Bookings",
                    style: TextStyle(
                      color: currentIndex == 3 ? Colors.pinkAccent : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}


void _showPopupCard(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: screenWidth * 0.92,
            height: screenHeight * 0.69, // Adjusted height to fit content better
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: screenHeight * 0.2, // Adjusted height using screen height
                    width: double.infinity,
                    color: AppColors.primaryColor,
                    padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Transform.scale(
                            scale: 1.5,
                            child: Container(
                              height: screenHeight * 0.3,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Image.asset(
                                  'assets/images/baymax2.png',
                                  height: screenHeight * 0.9,
                                ),
                              ),
                            ),
                          ),
                        ),
                       Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.02),
      child: Row(
        children: [
          Text(
            "                                    I am Baymax",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: AppColors.textColor,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Transform.scale(
              scale: 1.9,
              child: Image.asset(
                'assets/images/keyboard.png',
                width: 15,
                height: 15,
                color: AppColors.textColor,
              ),
            ),
          ),
        ],
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(left: 140),
      child: Text("Your Healthcare ", style: TextStyle(color: Colors.white),),
    ),
    // Text below "I am Baymax"
    
    // Text below "Your healthcare companion"
    Padding(
      padding: EdgeInsets.only(left: 140),
      child: Text(
        "Companion",
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: AppColors.textColor,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.1),
    ),
    Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.1, right: screenWidth * 0.2),
    ),
  ],
),

                        Positioned(
                          right: -50,
                          top: -50,
                          left: -50,
                          child: Text(
                            'Top Chat',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.02),

                // Your other containers and widgets
                Padding(
                   padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenHeight * 0.05),
                  child: Container(
                    height: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet consect?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                // Another container example
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09, right: screenHeight * 0.02),
                  child: Container(
                    height: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet consect?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Padding(
                   padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenHeight * 0.05),
                  child: Container(
                    height: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet consect?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.09, right: screenHeight * 0.02),
                  child: Container(
                    height: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet consect?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Divider(
                  height: 30.0,
                  thickness: 3.0,
                  color: Colors.white,
                  // indent: screenWidth * 0.25,
                  // endIndent: screenWidth * 0.3,
                   indent: 25.0,
                   endIndent: 25.0,
                ),

                // Message input section
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your message",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Transform.scale(
                              scale: 1.8,
                              child: Container(
                               height: screenHeight * 0.02,
                               width: screenHeight * 0.03,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryColor,
                                ),
                                child: Align(
                                  child: Icon(Icons.send, size: 10, color: Colors.white)),
                              ),
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
      );
    },
  );
}



