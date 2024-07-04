


import 'package:ai_doc_app/modules/BottomTabs/Home.dart';
import 'package:ai_doc_app/modules/BottomTabs/Medication.dart';
import 'package:ai_doc_app/modules/BottomTabs/appointment.dart';
import 'package:ai_doc_app/modules/BottomTabs/healthdevices.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

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

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = pages[currentIndex];

    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 40.0,
          width: 40.0,
          child: GestureDetector(
            onTap: () {
              print("Image button");
            },
            child: Image.asset(
              'assets/images/baymax.png', // Replace with your image path
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        color: AppColors.primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        width: 30,
                        color: currentIndex == 0
                            ? Colors.pinkAccent
                            : Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentIndex == 0
                              ? Colors.pinkAccent
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Medication();
                      currentIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/medications.png',
                        width: 30,
                        color: currentIndex == 1
                            ? Colors.pinkAccent
                            : Colors.white,
                      ),
                      Text(
                        "Medications",
                        style: TextStyle(
                          color: currentIndex == 1
                              ? Colors.pinkAccent
                              : Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = healthdevices();
                      currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/healthdevices.png',
                        color: currentIndex == 2
                            ? Colors.pinkAccent
                            : Colors.white,
                      ),
                      Text(
                        "Healthdevices",
                        style: TextStyle(
                          color: currentIndex == 2
                              ? Colors.pinkAccent
                              : Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = appointment();
                      currentIndex = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/appointment.png',
                        color: currentIndex == 3
                            ? Colors.pinkAccent
                            : Colors.white,
                      ),
                      Text(
                        "book",
                        style: TextStyle(
                          color: currentIndex == 3
                              ? Colors.pinkAccent
                              : Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.textColor,
    );
  }
}



