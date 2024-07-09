// import 'package:ai_doc_app/modules/loginscreen/login.dart';
// import 'package:ai_doc_app/theme/app_color.dart';
// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/background.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             left: 160,
//             top: 50,
//             child: Image.asset(
//               'assets/images/hi.png',
//               width: 100,
//               height: 100,
//             ),
//           ),
//           // Content centered in the scaffold
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 70),
//               child: SingleChildScrollView(
//                 child: Container(
//                   width: 290,
//                   height: 500,
//                   decoration: BoxDecoration(
//                     color: AppColors.accentColor,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const SizedBox(height: 20),
//                         const Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             fontSize: 28,
//                             color: AppColors.textColor,
//                             fontWeight: FontWeight.normal,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 20),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.email),
//                             prefixIconColor: AppColors.textColor,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Email or Phone',
//                             labelStyle: TextStyle(color: AppColors.textColor),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         TextFormField(
//                           obscureText: true,
//                           decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             prefixIconColor: Colors.white,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         Container(
//                           height: 60,
//                           width: 250,
//                           decoration: ShapeDecoration(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => const LoginScreen(),
//                                 ),
//                               );
//                             },
//                             style: ButtonStyle(
//                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                   AppColors.primaryColor),
//                             ),
//                             child: const Text(
//                               'Sign Up',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 30),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   color: Colors.grey[400],
//                                   thickness: 0.5,
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               const Text(
//                                 "Or Continue With",
//                                 style: TextStyle(color: AppColors.textColor),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: Divider(
//                                   thickness: 0.5,
//                                   color: Colors.grey[400],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 Image.asset(
//                                   'assets/images/fb.png', // Background image
//                                   height: 50,
//                                   width: 50,
//                                 ),
//                                 Image.asset(
//                                   'assets/images/facebook.png',
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(width: 30),
//                             Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 Image.asset(
//                                   'assets/images/goog.png', // Background image
//                                   height: 50,
//                                   width: 50,
//                                 ),
//                                 Image.asset(
//                                   'assets/images/google.png',
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'Already have an account?',
//                               style: TextStyle(color: AppColors.textColor),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const LoginScreen(),
//                                   ),
//                                 );
//                               },
//                               child: const Text(
//                                 'Log In',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: AppColors.textColor,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Text(
//                           '',
//                           style: TextStyle(
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 60,
//             right: 60,
//             bottom: 90,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const Text(
//                     'Do you have a code from Hospital?',
//                     style: TextStyle(fontSize: 10, color: Colors.black),
//                   ),
//                   const SizedBox(height: 10),
//                   Container(
//                     height: 50,
//                     width: 290,
//                     decoration: BoxDecoration(
//                       color: AppColors.greyColor,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           spreadRadius: 5,
//                           blurRadius: 10,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// // import 'package:doctor_ui_screens/modules/loginscreen/login.dart';
// // import 'package:flutter/material.dart';
// // import 'package:doctor_ui_screens/theme/app_color.dart'; // Import your custom colors

// // class SignUpScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background image covering the entire screen
// //           Positioned.fill(
// //             child: Image.asset(
// //               'assets/images/background.png',
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           Positioned(
// //             left: 160,
// //             top: 50,
// //             child: Image.asset(
// //               'assets/images/hi.png',
// //               width: 100,
// //               height: 100,
// //             ),
// //           ),
// //           // Content centered in the scaffold
// //           Container(
// //             child: Center(
// //               child: Padding(
// //                 padding: const EdgeInsets.only(
// //                   bottom: 70,
// //                 ),
// //                 child: Container(
// //                   width: 290,
// //                   height: 485,
// //                   decoration: BoxDecoration(
// //                     color: AppColors.accentColor,
// //                     borderRadius: BorderRadius.circular(20),
// //                     boxShadow: [
// //                       BoxShadow(
// //                         color: Colors.black.withOpacity(0.1),
// //                         spreadRadius: 5,
// //                         blurRadius: 10,
// //                         offset: Offset(0, 3),
// //                       ),
// //                     ],
// //                   ),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(20.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.center,
// //                       children: [
// //                         SizedBox(height: 20),
// //                         Text(
// //                           'Sign Up',
// //                           style: TextStyle(
// //                             fontSize: 28,
// //                             color: AppColors.textColor,
// //                             fontWeight: FontWeight.normal,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         SizedBox(height: 20),
// //                         TextFormField(
// //                           decoration: InputDecoration(
// //                             prefixIcon: Icon(Icons.email),
// //                             prefixIconColor: AppColors.textColor,
// //                             // hintText: 'Enter Your Email/Phone',
// //                             hintStyle: TextStyle(color: AppColors.textColor), 
// //                             labelText: 'Email or Phone',
// //                             labelStyle: TextStyle(color: AppColors.textColor), 
// //                             enabledBorder: UnderlineInputBorder(
// //                               borderSide: BorderSide(color: AppColors.textColor),
// //                             ),
// //                             focusedBorder: UnderlineInputBorder(
// //                               borderSide: BorderSide(color: AppColors.textColor),
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 10),
// //                         TextFormField(
// //                           obscureText: true,

// //                           decoration: InputDecoration(
// //                             prefixIcon: Icon(Icons.lock),
// //                             prefixIconColor: Colors.white,
// //                             // hintText: 'Enter Your Password',
// //                             hintStyle: TextStyle(color: AppColors.textColor),
// //                             labelText: 'Password',
                            
// //                             labelStyle: TextStyle(color: Colors.white), 
// //                             enabledBorder: UnderlineInputBorder(
// //                               borderSide: BorderSide(color: AppColors.textColor),
// //                             ),
// //                             focusedBorder: UnderlineInputBorder(
// //                               borderSide: BorderSide(color: AppColors.textColor),
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 30),
// //                         Container(
// //                           height: 60,
// //                           width: 250,
// //                           decoration: ShapeDecoration(
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(10),
// //                             ),
// //                           ),
// //                           child: ElevatedButton(
// //   onPressed: () {
// //     Navigator.of(context).push(
// //       MaterialPageRoute(
// //         builder: (context) => const LoginScreen(),
// //       ),
// //     );
// //   },
                            

                              
// //                               // Sign up logic
                            
// //                             style: ButtonStyle(
// //                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// //                                 RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(10),
// //                                 ),
// //                               ),
// //                               backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
// //                             ),
// //                             child: Text(
// //                               'Sign Up',
// //                               style: TextStyle(
// //                                 fontWeight: FontWeight.normal,
// //                                 color: Colors.white,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         const SizedBox(height: 10,),
// //                        Padding(
// //                          padding: const EdgeInsets.symmetric(horizontal: 30),
// //                          child: Row(
// //                            children: [
// //                              Expanded(
// //                               child: Divider(
// //                               color: Colors.grey[400],
// //                               thickness: 0.5,
                             
// //                              )
// //                              ),
                           
// //                          SizedBox(width: 10,),
// //                          Text("Or Continue With", style: TextStyle(color: AppColors.textColor),),


                         
// //                          SizedBox(width: 10,),
// //                          Expanded(child: Divider(
// //                           thickness: 0.5,
// //                           color: Colors.grey[400],
// //                          )
// //                          ),
// //                                                ],
// //                          ),
// //                        ),
// //                        SizedBox(height: 20,),

// //                        Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Image.asset('assets/images/facebook.png',
// //                           height: 30,
// //                           width: 30,),

// //                           SizedBox(width: 30,),

// //                           Image.asset('assets/images/google.png', height: 30, width: 30,),
// //                         ],
// //                        ),
// //                         SizedBox(width: 20,),
                      
 
                      

                       
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Text('Already have an account?', style: TextStyle(color: AppColors.textColor),),
// //                             TextButton(
// //                               onPressed: () {
// //                                 Navigator.pushNamed(
// //                                   context,
// //                                   '/signin', // Replace with your sign-in route
// //                                 );
// //                               },
// //                               child: Text(
// //                                 'Sign In',
// //                                 style: TextStyle(
// //                                   fontWeight: FontWeight.normal, color: AppColors.textColor
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
                    
// //                         Text(
// //                           '',
// //                           style: TextStyle(
// //                             fontSize: 12,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),


            
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }



// import 'package:doctor_ui_screens/modules/loginscreen/login.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor_ui_screens/theme/app_color.dart'; // Import your custom colors

// class SignUpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image covering the entire screen
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/background.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             left: 160,
//             top: 50,
//             child: Image.asset(
//               'assets/images/hi.png',
//               width: 100,
//               height: 100,
//             ),
//           ),
//           // Content centered in the scaffold
//           Container(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   bottom: 70,
//                 ),
//                 child: Container(
//                   width: 290,
//                   height: 485,
//                   decoration: BoxDecoration(
//                     color: AppColors.accentColor,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 20),
//                         Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             fontSize: 28,
//                             color: AppColors.textColor,
//                             fontWeight: FontWeight.normal,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: 20),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.email),
//                             prefixIconColor: AppColors.textColor,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Email or Phone',
//                             labelStyle: TextStyle(color: AppColors.textColor),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         TextFormField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             prefixIconColor: Colors.white,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         Container(
//                           height: 60,
//                           width: 250,
//                           decoration: ShapeDecoration(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   builder: (context) => const LoginScreen(),
//                                 ),
//                               );
//                             },
//                             style: ButtonStyle(
//                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
//                             ),
//                             child: Text(
//                               'Sign Up',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 30),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   color: Colors.grey[400],
//                                   thickness: 0.5,
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Text("Or Continue With", style: TextStyle(color: AppColors.textColor)),
//                               SizedBox(width: 10),
//                               Expanded(
//                                 child: Divider(
//                                   thickness: 0.5,
//                                   color: Colors.grey[400],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/facebook.png',
//                               height: 30,
//                               width: 30,
//                             ),
//                             SizedBox(width: 30),
//                             Image.asset('assets/images/google.png', height: 30, width: 30),
//                           ],
//                         ),
//                         SizedBox(width: 20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text('Already have an account?', style: TextStyle(color: AppColors.textColor)),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(
//                                   context,
//                                   '/signin', // Replace with your sign-in route
//                                 );
//                               },
//                               child: Text(
//                                 'Sign In',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal, color: AppColors.textColor,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           '',
//                           style: TextStyle(
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 60,
//             right: 60,
//             bottom: 90,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const Text(
//                     'Do you have a code from Hospital?',
//                     style: TextStyle(fontSize: 10, color: Colors.black),
//                   ),
//                   const SizedBox(height: 10),
//                   Container(
//                     height: 50,
//                     width: 290,
//                     decoration: BoxDecoration(
//                       color: AppColors.greyColor,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           spreadRadius: 5,
//                           blurRadius: 10,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:doctor_ui_screens/modules/loginscreen/login.dart';
// import 'package:doctor_ui_screens/theme/app_color.dart';
// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/background.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             left: 160,
//             top: 50,
//             child: Image.asset(
//               'assets/images/hi.png',
//               width: 100,
//               height: 100,
//             ),
//           ),
//           // Content centered in the scaffold
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 70),
//               child: SingleChildScrollView(
//                 child: Container(
//                   width: 290,
//                   height: 485,
//                   decoration: BoxDecoration(
//                     color: AppColors.accentColor,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const SizedBox(height: 20),
//                         const Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             fontSize: 28,
//                             color: AppColors.textColor,
//                             fontWeight: FontWeight.normal,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 20),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.email),
//                             prefixIconColor: AppColors.textColor,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Email or Phone',
//                             labelStyle: TextStyle(color: AppColors.textColor),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         TextFormField(
//                           obscureText: true,
//                           decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             prefixIconColor: Colors.white,
//                             hintStyle: TextStyle(color: AppColors.textColor),
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: AppColors.textColor),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         Container(
//                           height: 60,
//                           width: 250,
//                           decoration: ShapeDecoration(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) =>  LoginScreen(),
//                                 ),
//                               );
//                             },
//                             style: ButtonStyle(
//                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                   AppColors.primaryColor),
//                             ),
//                             child: const Text(
//                               'Sign Up',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 30),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   color: Colors.grey[400],
//                                   thickness: 0.5,
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               const Text(
//                                 "Or Continue With",
//                                 style: TextStyle(color: AppColors.textColor),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: Divider(
//                                   thickness: 0.5,
//                                   color: Colors.grey[400],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 // Image.asset(
//                                 //   '', // Background image
//                                 //   height: 50,
//                                 //   width: 50,
//                                 // ),
//                                 Image.asset(
//                                   'assets/images/facebook.png',
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(width: 30),
//                             Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 // Image.asset(
//                                 //   'assets/images/goog.png', // Background image
//                                 //   height: 50,
//                                 //   width: 50,
//                                 // ),
//                                 Image.asset(
//                                   'assets/images/google.png',
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'Already have an account?',
//                               style: TextStyle(color: AppColors.textColor),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const LoginScreen(),
//                                   ),
//                                 );
//                               },
//                               child: const Text(
//                                 'Log In',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: AppColors.textColor,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Text(
//                           '',
//                           style: TextStyle(
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 60,
//             right: 60,
//             bottom: 90,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const Text(
//                     'Do you have a code from Hospital?',
//                     style: TextStyle(fontSize: 10, color: Colors.black),
//                   ),
//                   const SizedBox(height: 10),
//                   Container(
//                     height: 50,
//                     width: 290,
//                     decoration: BoxDecoration(
//                       color: AppColors.greyColor,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           spreadRadius: 5,
//                           blurRadius: 10,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:ai_doc_app/modules/loginscreen/login.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: screenWidth * 0.4,
            right: screenWidth * 0.4,
            
            top: screenHeight * 0.02,
            child: Image.asset(
              'assets/images/hi.png',
              width: screenWidth * 2.1,
              height: screenHeight * 0.20,
            ),
          ),
          SizedBox(height: screenWidth * 0.4,),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.12, top: screenHeight * 0.04 ),
              child: SingleChildScrollView(
                child: Container(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.55,
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: screenHeight * 0.015),
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: AppColors.textColor,
                            hintStyle: TextStyle(color: AppColors.textColor),
                            labelText: 'Email or Phone',
                            labelStyle: TextStyle(color: AppColors.textColor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.white,
                            hintStyle: TextStyle(color: AppColors.textColor),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.textColor),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Container(
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.6,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryColor),
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey[400],
                                  thickness: 0.5,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.015),
                              const Text(
                                "Or Continue With",
                                style: TextStyle(color: AppColors.textColor),
                              ),
                              SizedBox(width: screenWidth * 0.015),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  height: screenHeight * 0.035,
                                  width: screenWidth * 0.07,
                                ),
                              ],
                            ),
                            SizedBox(width: screenWidth * 0.06),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google.png',
                                  height: screenHeight * 0.035,
                                  width: screenWidth * 0.07,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: AppColors.textColor),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.15,
            right: screenWidth * 0.15,
            bottom: screenHeight * 0.1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Do you have a code from Hospital?',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


