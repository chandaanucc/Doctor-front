import 'dart:convert';
// import 'package:doctor_ui_screens/modules/BottomTabs/chatbotpopupscreen.dart';
import 'package:ai_doc_app/theme/app_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
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

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu, weight: 710,
              size: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
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
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/baymax.png',
              width: 72,
              height: 52,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: riskData == null
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
        //                     // Long container
        // // Long container
        // if (riskData!.containsKey('long_container') && riskData!['long_container'] != null) ...[
        //   Container(
        //     width: double.infinity,
        //     height: 100,
        //     margin: EdgeInsets.only(bottom: 10.0),
        //     padding: EdgeInsets.all(8.0),
        //     decoration: BoxDecoration(
        //       color: Colors.white, // Adjust color as needed
        //       borderRadius: BorderRadius.circular(10.0),
        //       border: Border.all(color: AppColors.primaryColor), // Border color for long_container
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 30),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
        //         children: [
        //           if (riskData!['long_container'].containsKey('image'))
        //             Padding(
        //               padding: const EdgeInsets.only(right: 20.0), // Adjust spacing
        //               child: Image.asset(
        //                 riskData!['long_container']['image'],
        //                 width: 80,
        //                 height: 80,
        //               ),
        //             ),
        //           Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.only(right: 70),
        //                 child: Text(
        //                   'ℍ𝕖𝕒𝕣𝕥 ℝ𝕒𝕥𝕖',
        //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
        //                 ),
        //               ),
        //               SizedBox(height: 8),
        //               if (riskData!['long_container'].containsKey('logo'))
        //                 Image.asset(
        //                   riskData!['long_container']['logo'],
        //                   width: 90,
        //                   height: 90,
        //                 ), // Adjust spacing as needed
        //             ],
        //           ),
        //           Spacer(), // Adds space between heart.png and pulse.png
        //           if (riskData!['long_container'].containsKey('pulse_image'))
        //             Image.asset(
        //               riskData!['long_container']['pulse_image'],
        //               width: 80,
        //               height: 80,
        //             ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ],
        // Long container
        if (riskData!.containsKey('long_container') && riskData!['long_container'] != null) ...[
          Container(
            width: double.infinity,
            height: 120, // Increased height to accommodate content
            margin: EdgeInsets.only(bottom: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
        color: Colors.white, // Adjust color as needed
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.primaryColor), // Border color for long_container
            ),
            child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (riskData!['long_container'].containsKey('picture'))
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  riskData!['long_container']['picture'],
                  width: 80,
                  height: 80,
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only( right: 65),
                  child: Text(
                    'ℍ𝕖𝕒𝕣𝕥 ℝ𝕒𝕥𝕖',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
                  ),
                ),
                SizedBox(height: 8),
                if (riskData!['long_container'].containsKey('details'))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                      padding: const EdgeInsets.only( right: 100),
                        child: Text(
                          riskData!['long_container']['details'],
                          style: TextStyle(fontSize: 16, color: AppColors.primaryColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            Spacer(), // Adds space between details and pulse image
            if (riskData!['long_container'].containsKey('logo'))
              Image.asset(
                riskData!['long_container']['logo'],
                width: 100,
                height: 100,
              ),
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
            Color containerTextColor = containerColor == Colors.white ? Colors.grey : Colors.white;
        
            // Use primary color for container 3 text color
            if (index == 2) {
        try {
          containerTextColor = Color(int.parse(containerData['textColor'].replaceAll('#', '0xFF')));
        } catch (e) {
          containerTextColor = AppColors.primaryColor; // Default to primary color if textColor is not provided or cannot be parsed
          print('Error parsing text color: $e');
        }
            }
        
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
          padding: const EdgeInsets.only(bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Image.asset(
                        containerLogo,
                        width: 140,
                        height: 30,
                        color: AppColors.accentColor,
                      ),
                    ),
                  ],
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
      ),
      floatingActionButton: GestureDetector(
  onTap: () {
      _showPopupCard(context);
      
  },



  
  child: Container(
    width: 250,
    height: 180,
    child: Padding(
      padding: const EdgeInsets.only(right: 130, top: 100), // Increase padding for larger image
      child: Image.asset(
        'assets/images/chatbot.png',
        width: 100, // Increase image size
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

// void _showBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
//       ),
//       builder: (BuildContext context) {
//         return Container(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//           height: MediaQuery.of(context).size.height * 200,
//           width: MediaQuery.of(context).size.height * 200,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
            
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(Icons.photo),
//                 title: Text('Photo'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   // Add your photo handling code here
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.camera),
//                 title: Text('Camera'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   // Add your camera handling code here
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.video_call),
//                 title: Text('Video Call'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   // Add your video call handling code here
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }



// void _showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     backgroundColor: Colors.white,
//     context: context,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
//     ),
//      isScrollControlled: true,
//     builder: (BuildContext context) {
//       return Container(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//         height: MediaQuery.of(context).size.height * 0.85,
//         width: MediaQuery.of(context).size.width ,
//         child: Column(
//           children: <Widget>[
//             _topChat(context),
//             _bodyChat(),
//           ],
//         ),
//       );
//     },
//   );
// }


// void _showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     backgroundColor: Colors.white,
//     context: context,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
//     ),
//     isScrollControlled: true,
//     builder: (BuildContext context) {
//       return Container(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//         height: MediaQuery.of(context).size.height * 0.85,
//         child: Column(
//           children: <Widget>[
//             // WavyHeader(), // Remove WavyHeader from here if using it in AppBar
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0), // Adjust horizontal padding
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(height: 10), // Spacer for top margin
//                     _topChat(context),
//                     SizedBox(height: 10), // Spacer between top chat and body chat
//                     _bodyChat(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

void _showPopupCard(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 0), // Ensure dialog takes full width
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        
          
          
          child: Container(
            
            width: MediaQuery.of(context).size.width * 0.92, // Set width to full screen width
            height: MediaQuery.of(context).size.height * 0.69, // Set desired height
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
           
            child: Column(
              
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                 ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(

                    height: 170,
                    width: 570,
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    color: AppColors.primaryColor,

                  ),
                 ),
                 
                
                _topChat(context),
                // Spacer between top chat and body chat
                _bodyChat(),
              ],
              
            ),
          ),
        );
        
    });
}   
    
  
  

Widget _topChat(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Adjust vertical padding
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '', // Adjust chat title text here
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            // IconButton(
            //   icon: Icon(Icons.call),
            //   onPressed: () {},
            //   // Add your call functionality here
            // ),
            // // SizedBox(width: 20),
            // // IconButton(
            // //   icon: Icon(Icons.videocam),
            // //   onPressed: () {},
            // //   // Add your video call functionality here
            // ),
          ],
        ),
      ],
    ),
  );
}

Widget _bodyChat() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 90),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _itemChat(
            avatar: 'assets/image/5.jpg',
            chat: 0,
            message: 'Lorem Ipsum is simply dummy text.',
            time: '18:00',
          ),
          _itemChat(
            chat: 1,
            message: 'Lorem Ipsum is simply dummy text',
            time: '18:00', avatar: '',
            // avatar: '', // Remove avatar if not needed
          ),
          _itemChat(
            avatar: 'assets/image/5.jpg',
            chat: 0,
            message: 'Lorem Ipsum is simply dummy text',
            time: '18:00',
          ),
          _itemChat(
            chat: 1,
            message: 'Lorem Ipsum is simply ',
            time: '18:00', avatar: '',
            // avatar: '', // Remove avatar if not needed
          ),
          _itemChat(
            avatar: 'assets/image/5.jpg',
            chat: 0,
            message: 'Lorem Ipsum is simply dummy text',
            time: '18:00',
          ),
          
        ],
      ),
    ),
  );
}

Widget _itemChat({required int chat, required String avatar, message, time}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (chat == 1) // Show avatar for received messages only
          Avatar(image: avatar, size: 50),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: chat == 0 ? Colors.blue : Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: chat == 1 ? Radius.circular(25) : Radius.circular(0),
                bottomRight: chat == 0 ? Radius.circular(25) : Radius.circular(0),
              ),
            ),
            child: Text(
              '$message',
              style: TextStyle(
                color: chat == 0 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        if (chat == 0) // Show avatar for sent messages only
          Avatar(image: avatar, size: 10),
      ],
    ),
  );
}

class Avatar extends StatelessWidget {
  final String image;
  final double size;

  const Avatar({
    Key? key,
    required this.image,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
