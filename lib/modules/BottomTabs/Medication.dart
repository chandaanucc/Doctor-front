
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class Medication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Transform.scale(
          scale: 1.5,
          child: Icon(Icons.medication, size: 70, color: AppColors.primaryColor))
      ),
    );
  }
}
