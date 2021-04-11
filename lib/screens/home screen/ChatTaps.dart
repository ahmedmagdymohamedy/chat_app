import 'package:flutter/material.dart';
import 'package:shat_app/models/MyConsts.dart';

class ChatTaps extends StatelessWidget {
  const ChatTaps({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: mPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatTap(
              title: 'All Massages',
              isActive: true,
            ),
            SizedBox(
              width: 20,
            ),
            ChatTap(
              title: 'Active',
              isActive: false,
            )
          ],
        ),
      ),
    );
  }
}

class ChatTap extends StatelessWidget {
  String title;
  bool isActive;
  ChatTap({
    this.title,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: isActive ? Theme.of(context).scaffoldBackgroundColor : null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isActive
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Colors.white)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: isActive ? null : mScaffoldBackGroundColorLight),
          ),
        ),
      ),
    );
  }
}
