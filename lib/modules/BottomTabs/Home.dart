
import 'dart:convert';

import 'package:ai_doc_app/modules/BottomTabs/chatbotpopupscreen.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';
 // Import the ChatbotOptionsScreen.dart

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic>? riskData;

  @override
  void initState() {
    super.initState();
    loadRiskData();
  }

  Future<void> loadRiskData() async {
    try {
      String jsonString = await DefaultAssetBundle.of(context).loadString('assets/data/risk_data.json');
      setState(() {
        riskData = jsonDecode(jsonString);
        print('Data loaded: $riskData'); // Debug print
      });
    } catch (e) {
      print('Error loading JSON: $e'); // Debug print
    }
  }

  void _showChatbotOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ChatWidget (); // Show ChatbotOptionsScreen as a bottom sheet
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu, weight: 710,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('          Home', style: TextStyle(fontSize: 20.0)), // Adjusted text alignment
                SizedBox(height: 4),
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/baymax.png',
              width: 32,
              height: 32,
            ),
          ),
        ],
      ),
      body: riskData == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Hi, Cruzemortal',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 16),
                    // First GridView with risk and risk2
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1,
                      ),
                      itemCount: 2, // Only include 'risk' and 'risk2'
                      itemBuilder: (context, index) {
                        final key = riskData!.keys.elementAt(index);
                        final risk = riskData![key];
                        if (risk == null) return SizedBox.shrink();

                        final String title = risk['title'] ?? 'No Title';
                        final String details = risk['details'] ?? 'No Details';
                        final String image = risk['image'] ?? '';
                        final String containerLogo = risk['logo'] ?? '';

                        Color color;
                        try {
                          color = risk.containsKey('color')
                              ? Color(int.parse(risk['color'].replaceAll('#', '0xFF')))
                              : Colors.white;
                        } catch (e) {
                          color = Colors.white;
                          print('Error parsing color: $e');
                        }

                        // Determine text color based on background color
                        Color textColor = color == Colors.white ? Colors.black : Colors.white;

                        return Container(
                          width: 100,
                          height: 100, // Decrease the size
                          margin: EdgeInsets.only(top: 20.0),
                          padding: EdgeInsets.all(10.0), // Adjust padding
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10.0),
                            border: risk.containsKey('color') ? null : Border.all(color: AppColors.primaryColor),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (key == 'risk2' && risk.containsKey('image'))
                                Image.asset(
                                  image,
                                  width: 60,
                                  height: 60,
                                ),
                              Text(
                                title,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: textColor),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0), // Adjust padding
                                  child: Text(
                                    details,
                                    style: TextStyle(fontSize: 20, color: textColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              if (risk.containsKey('image') && key != 'risk2')
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      image,
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    // Long container
                    if (riskData!.containsKey('long_container') && riskData!['long_container'] != null) ...[
                      Container(
                        width: double.infinity,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white, // Adjust color as needed
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: AppColors.primaryColor), // Border color for long_container
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (riskData!['long_container'].containsKey('image'))
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30, ),
                                  child: Image.asset(
                                    riskData!['long_container']['image'],
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              SizedBox(width: 90),
                              if (riskData!['long_container'].containsKey('logo'))
                                Padding(
                                  
                                  padding: const EdgeInsets.only(left: 100, top: 20),
                                  child: Image.asset(
                                    riskData!['long_container']['logo'],
                                    width: 90,
                                    height: 90,
                                  ),
                                ), // Adjust spacing as needed
                              // Expanded(
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     mainAxisAlignment: MainAxisAlignment.center,
                              //     children: [
                              //       Text(
                              //         riskData!['long_container']['title'] ?? 'No Title',
                              //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.primaryColor), // Decrease font size
                              //       ),
                              //       SizedBox(height: 8),
                              //       Padding(
                              //         padding: const EdgeInsets.only(left: 80),
                              //         child: Text(
                              //           riskData!['long_container']['details'] ?? 'No Details',
                              //           style: TextStyle(fontSize: 12, color: AppColors.primaryColor), // Decrease font size
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    SizedBox(height: 10),
                    // New GridView with additional containers
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1,
                      ),
                      itemCount: 4, // Now include 'container1', 'container2', 'container3', 'container4'
                      itemBuilder: (context, index) {
                        final containerKey = 'container${index + 1}';
                        final containerData = riskData![containerKey];
                        if (containerData == null) return SizedBox.shrink();

                        final String containerTitle = containerData['title'] ?? 'No Title';
                        final String containerDetails = containerData['details'] ?? 'No Details';
                        final String containerImage = containerData['image'] ?? '';
                        final String containerLogo = containerData['logo'] ?? ''; // Added logo
                        Color containerColor;
                        try {
                          containerColor = containerData.containsKey('color')
                              ? Color(int.parse(containerData['color'].replaceAll('#', '0xFF')))
                              : Colors.white;
                        } catch (e) {
                          containerColor = Colors.white;
                          print('Error parsing container color: $e');
                        }

                        // Determine text color based on background color
                        Color containerTextColor = containerColor == Colors.white ? Colors.black : Colors.white;

                        return Container(
                          width: 80, // Decrease width
                          height: 80, // Decrease height
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding: EdgeInsets.all(8.0), // Adjust padding
                          decoration: BoxDecoration(
                            color: containerColor, // Use container color
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: index == 1 || index == 3 ? Colors.blue : AppColors.primaryColor,
                            ), // Border color conditionally for container2 and container4
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  containerImage,
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(height: 2),
                                Text(
                                  containerTitle,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: containerTextColor), // Decrease font size
                                  textAlign: TextAlign.center,
                                ),
                                if (containerLogo.isNotEmpty)
                                  Image.asset(
                                    containerLogo,
                                    width: 30,
                                    height: 30,
                                  ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    containerDetails,
                                    style: TextStyle(fontSize: 18, color: containerTextColor), // Decrease font size
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 100), // Ensure space for the image button
                  ],
                ),
              ),
            ),
      floatingActionButton: GestureDetector(
  onTap: () {
    _showChatbotOptions(context);
  },
  child: Container(
    width: 250,
    height: 180,
    child: Padding(
      padding: const EdgeInsets.only(right: 130, top: 100), // Increase padding for larger image
      child: Image.asset(
        'assets/images/chatbot.png',
        width: 80, // Increase image size
        height: 90, // Increase image size
      ),
    ),
  ),
),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the home tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle the profile tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the settings tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
