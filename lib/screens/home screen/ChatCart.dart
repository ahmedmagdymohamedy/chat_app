import 'package:flutter/material.dart';
import 'package:shat_app/models/MyModels.dart';
import 'package:shat_app/screens/chat%20screen/ChatScreen.dart';

class ChatCart extends StatelessWidget {
  ChatItem chatItem;
  ChatCart(this.chatItem);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => ChatScreen()));
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(chatItem.speakerImgURL),
              radius: 24,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatItem.speakerName,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Text(
                        chatItem.lastMassage,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Opacity(
                opacity: 0.4,
                child: Text(
                  chatItem.dateTime,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
