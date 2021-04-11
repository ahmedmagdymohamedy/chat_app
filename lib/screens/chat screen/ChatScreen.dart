import 'package:flutter/material.dart';

import 'ChatBody.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var BuildAppBar = AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/ahmed magdy.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmed Magdy",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Opacity(
                opacity: 0.4,
                child: Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      actions: [
        Icon(Icons.call),
        SizedBox(width: 20),
        Icon(Icons.video_call),
        SizedBox(width: 20),
      ],
    );
    return Scaffold(
      appBar: BuildAppBar,
      body: ChatBody(),
    );
  }
}
