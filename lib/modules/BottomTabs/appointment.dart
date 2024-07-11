
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      
      appBar: AppBar(
        title: Text('More'),
      ),
      body: Center(
       
        child: Image.asset("assets/images/apmnt.png", width: screenWidth * 6.9, height: screenHeight * 1.9, color:  AppColors.primaryColor,)
      ),
    );
  }
}
