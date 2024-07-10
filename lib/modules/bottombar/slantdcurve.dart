import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class PopupCard extends StatelessWidget {
  _showPopupCard(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.69,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: <Widget>[
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 170,
                    width: 570,
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                    color: Colors.blue,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Add your widgets here
                      ],
                    ),
                  ),
                ),
                _topChat(context),
                SizedBox(height: 10),
                _bodyChat(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _topChat(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
              // Add your icons or buttons here
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
            CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 25,
            ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: chat == 0 ? Colors.blue : Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft:
                      chat == 1 ? Radius.circular(25) : Radius.circular(0),
                  bottomRight:
                      chat == 0 ? Radius.circular(25) : Radius.circular(0),
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
            CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 10,
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Replace with your actual usage of the popup card
    return Container();
  }
}
