import 'package:flutter/material.dart';
import 'package:shat_app/models/MyModels.dart';

import 'ChatCart.dart';
import 'ChatTaps.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatTaps(),
        Expanded(
          child: ListView.builder(
            itemCount: chatDemoData.length,
            itemBuilder: (ctx, i) => ChatCart(chatDemoData[i]),
          ),
        )
      ],
    );
  }
}
