
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class healthdevices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),
      body: Center(
        child: Transform.scale(
          scale: 1.5,
          child: Icon(Icons.volunteer_activism, size: 70, color: AppColors.primaryColor,))
      ),
    );
  }
}
