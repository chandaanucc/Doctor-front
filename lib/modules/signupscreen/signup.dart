import 'package:flutter/material.dart';
import 'package:doctor_ui_screens/theme/app_color.dart'; // Import your custom colors

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image covering the entire screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 160,
            top: 50,
            child: Image.asset(
              'assets/images/hi.png',
              width: 100,
              height: 100,
            ),
          ),
          // Content centered in the scaffold
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 70,
                ),
                child: Container(
                  width: 290,
                  height: 485,
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 28,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: AppColors.textColor,
                            // hintText: 'Enter Your Email/Phone',
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
                        SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,

                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.white,
                            // hintText: 'Enter Your Password',
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
                        SizedBox(height: 30),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Sign up logic
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 30),
                         child: Row(
                           children: [
                             Expanded(
                              child: Divider(
                              color: Colors.grey[400],
                              thickness: 0.5,
                             
                             )
                             ),
                           
                         SizedBox(width: 10,),
                         Text("Or Continue With", style: TextStyle(color: AppColors.textColor),),


                         
                         SizedBox(width: 10,),
                         Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                         )
                         ),
                                               ],
                         ),
                       ),
                       SizedBox(height: 20,),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/facebook.png',
                          height: 30,
                          width: 30,),

                          SizedBox(width: 30,),

                          Image.asset('assets/images/google.png', height: 30, width: 30,),
                        ],
                       ),
                        SizedBox(width: 20,),
                      
 
                      

                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?', style: TextStyle(color: AppColors.textColor),),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/signin', // Replace with your sign-in route
                                );
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal, color: AppColors.textColor
                                ),
                              ),
                            ),
                          ],
                        ),
                    
                        Text(
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
        ],
      ),
    );
  }
}
