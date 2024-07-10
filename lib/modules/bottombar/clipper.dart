import 'package:flutter/material.dart';

class WhatsAppChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Chat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Container(
                height: 80,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                // Your container content here
              ),
            ),
            SizedBox(height: 16), // Adjusted spacing between Padding and _bodyChat

            // WhatsApp-like chat containers
            _buildChatContainer(),
            _buildChatContainer(),
            _buildChatContainer(),
            _buildChatContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildChatContainer() {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: Center(
        child: Text(
          'Chat Message',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
