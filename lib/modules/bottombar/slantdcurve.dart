// import 'package:flutter/material.dart';

// class WavyHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: TopWaveClipper(),
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFFF9844),
//               Color(0xFFFE8853),
//               Color(0xFFFD7267),
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         height: MediaQuery.of(context).size.height / 2.5,
//         child: Center(
//           child: Text(
//             'Slanted AppBar',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TopWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height);

//     var firstControlPoint = Offset(size.width / 7, size.height - 30);
//     var firstEndPoint = Offset(size.width / 6, size.height / 1.5);

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);

//     var secondControlPoint = Offset(size.width / 5, size.height / 4);
//     var secondEndPoint = Offset(size.width / 1.5, size.height / 5);
    
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);

//     var thirdControlPoint = Offset(size.width - (size.width / 9), size.height / 6);
//     var thirdEndPoint = Offset(size.width, 0.0);
    
//     path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
//         thirdEndPoint.dx, thirdEndPoint.dy);

//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }



import 'dart:ui';

import 'package:flutter/material.dart';

class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: orangeGradients,
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        height: MediaQuery.of(context).size.height / 3, // Adjust height as needed
        width: MediaQuery.of(context).size.width, // Full width of the screen
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height); // Start from bottom-left corner

    // First curve (bottom-left to center)
    var firstControlPoint = Offset(size.width / 4, size.height - 40);
    var firstEndPoint = Offset(size.width / 2, size.height - 20);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // Second curve (center to bottom-right)
    var secondControlPoint = Offset(size.width * 3 / 4, size.height);
    var secondEndPoint = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // End at bottom-right corner
    path.lineTo(size.width, 0);

    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];

