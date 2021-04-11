import 'package:flutter/material.dart';
import 'package:shat_app/models/MyConsts.dart';
import 'package:shat_app/models/MyModels.dart';

import 'MassageCart.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
              itemCount: massagesDemoData.length,
              itemBuilder: (context, i) {
                return MassageCart(massagesDemoData[i]);
              }),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.1),
                ),
              ]),
          child: Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.mic),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.1),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.emoji_emotions),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.attach_file),
                      SizedBox(width: 10),
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
