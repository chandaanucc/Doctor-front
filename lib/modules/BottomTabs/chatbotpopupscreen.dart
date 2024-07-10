// import 'package:flutter/material.dart';

// class ChatWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ClipPath(
//           clipper: MyCustomClipper(),
//           child: Column(
//             children: [
//               _topChat(context),
//               _bodyChat(),
//               SizedBox(height: 120),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _topChat(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               GestureDetector(
//                 onTap: () => Navigator.of(context).pop(),
//                 child: Icon(
//                   Icons.arrow_back_ios,
//                   size: 25,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 '',
//                 style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,// apppbar
//                     color: Colors.black),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   // color: Colors.black12,
//                 ),
//                 // child: Icon(
//                 //   Icons.call,
//                 //   size: 25,
//                 //   color: Colors.black,
//                 // ),
//               ),
//               SizedBox(width: 20),
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.white,
//                 ),
//                 // child: Icon(
//                 //   // Icons.videocam,
//                 //   // size: 25,
//                 //   // color: Colors.black,
//                 // ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _bodyChat() {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.only(left: 25, right: 25, top: 25),
//         width: double.infinity,
//         color: Colors.white,
//         child: ListView(
//           physics: BouncingScrollPhysics(),
//           children: [
//             _itemChat(
//               avatar: 'assets/image/5.jpg',
//               chat: 1,
//               message:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
//               time: '18.00',
//             ),
//             _itemChat(
//               chat: 0,
//               message: 'Okey 🐣',
//               time: '18.00',
//               avatar: '',
//             ),
//             _itemChat(
//               avatar: 'assets/image/5.jpg',
//               chat: 1,
//               message: 'It has survived not only five centuries, 😀',
//               time: '18.00',
//             ),
//             _itemChat(
//               chat: 0,
//               message:
//                   'Contrary to popular belief, Lorem Ipsum is not simply random text. 😎',
//               time: '18.00',
//               avatar: '',
//             ),
//             _itemChat(
//               avatar: 'assets/image/5.jpg',
//               chat: 1,
//               message:
//                   'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
//               time: '18.00',
//             ),
//             _itemChat(
//               avatar: 'assets/image/5.jpg',
//               chat: 1,
//               message: '😅 😂 🤣',
//               time: '18.00',
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 0 = Send
//   // 1 = Received
//   Widget _itemChat({required int chat, required String avatar, message, time}) {
//     return Row(
//       mainAxisAlignment:
//           chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         avatar != null
//             ? Avatar(
//                 image: avatar,
//                 size: 50,
//               )
//             : Text(
//                 '$time',
//                 style: TextStyle(color: Colors.grey.shade400),
//               ),
//         Flexible(
//           child: Container(
//             margin: EdgeInsets.only(left: 10, right: 10, top: 20),
//             padding: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: chat == 0 ? Colors.green : Colors.black12,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(25),
//                 topRight: Radius.circular(25),
//                 bottomLeft: Radius.circular(chat == 0 ? 25 : 0),
//                 bottomRight: Radius.circular(chat == 0 ? 0 : 25),
//               ),
//             ),
//             child: Text(
//               '$message',
//               style: TextStyle(
//                 color: chat == 0 ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         avatar != null
//             ? Text(
//                 '$time',
//                 style: TextStyle(color: Colors.grey.shade400),
//               )
//             : Avatar(
//                 image: avatar,
//                 size: 50,
//               ),
//       ],
//     );
//   }
// }

// class Avatar extends StatelessWidget {
//   final String image;
//   final double size;
//   final EdgeInsetsGeometry margin;

//   const Avatar({
//     Key? key,
//     required this.image,
//     this.size = 50,
//     this.margin = const EdgeInsets.all(0),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: margin,
//       height: size,
//       width: size,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: AssetImage(image),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final Path path = Path();
//     path.lineTo(0, size.height - 50);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 50);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
