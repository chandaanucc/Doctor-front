// import 'package:doctor_ui_screens/theme/app_color.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Get the screen size
//     Size screenSize = MediaQuery.of(context).size;

//     // Calculate the height for the Long Container
//     double longContainerHeight = screenSize.height * 0.3; // Adjust the percentage as needed

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Two Grid Containers Example'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: Image.asset(
//               'assets/images/baymax.png',
//               width: 40,
//               height: 40,
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // First Grid Container with Hamburger Menu
//             Container(
//               color: Colors.grey[200],
//               padding: EdgeInsets.all(16.0),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10.0,
//                 mainAxisSpacing: 10.0,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 children: [
//                   // Item 1
//                   // Item 1
// Container(
//   decoration: BoxDecoration(
//     color: AppColors.primaryColor,
//     borderRadius: BorderRadius.circular(10.0),
//   ),
//   alignment: Alignment.center,
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Center(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Text(
//             'Risk 1',
//             style: TextStyle(color: Colors.white, fontSize: 18.0),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//       SizedBox(height: 40.0), // Space between text and number
//       Text(
//         '9072', // Replace with your number or dynamic value
//         style: TextStyle(color: Colors.white, fontSize: 16.0),
//         textAlign: TextAlign.center,
//       ),
//     ],
//   ),
// ),

//                   // Item 2
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Item 2',
//                       style: TextStyle(color: Colors.white, fontSize: 18.0),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Second Grid Container with Long Container
//             Container(
//               color: Colors.grey[300],
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   // Long Container
//                   Container(
//                     margin: EdgeInsets.only(bottom: 16.0),
//                     padding: EdgeInsets.all(16.0),
//                     height: longContainerHeight * 0.4, // Use calculated height
//                     decoration: BoxDecoration(
//                       color: Colors.orange,
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: Text(
//                       'Long Container',
//                       style: TextStyle(color: Colors.white, fontSize: 18.0),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),

//                   // Additional Containers in Grid Format
//                   GridView.count(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10.0,
//                     mainAxisSpacing: 10.0,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     children: [
//                       // Container 3
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Container 3',
//                           style: TextStyle(color: Colors.white, fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                       // Container 4
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Container 4',
//                           style: TextStyle(color: Colors.white, fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                       // Container 5
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Container 5',
//                           style: TextStyle(color: Colors.white, fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                       // Container 6
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Container 6',
//                           style: TextStyle(color: Colors.white, fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




