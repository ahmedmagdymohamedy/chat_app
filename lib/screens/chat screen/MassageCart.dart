import 'package:flutter/material.dart';
import 'package:shat_app/models/MyConsts.dart';
import 'package:shat_app/models/MyModels.dart';

class MassageCart extends StatelessWidget {
  Massage massage;

  MassageCart(
    this.massage,
  );

  Widget massageContain(BuildContext context) {
    switch (massage.massageType) {
      case MassageType.text:
        return Text(
          massage.text,
          style: TextStyle(
            color: massage.isSender ? Colors.white : null,
          ),
        );
        break;

      case MassageType.audio:
        return Container(
          height: 20,
          width: 200,
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 20,
                color: massage.isSender
                    ? Colors.white.withOpacity(0.4)
                    : Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.7),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: massage.isSender
                            ? Colors.white.withOpacity(0.4)
                            : mPrimaryColor.withOpacity(0.4),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              massage.isSender ? Colors.white : mPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "0:54",
                  style: TextStyle(
                    color:
                        massage.isSender ? Colors.white.withOpacity(0.4) : null,
                  ),
                ),
              ),
            ],
          ),
        );
        break;

      case MassageType.video:
        return Text(
          massage.text,
          style: TextStyle(
            color: massage.isSender ? Colors.white : null,
          ),
        );
        break;

      case MassageType.image:
        return Text(
          massage.text,
          style: TextStyle(
            color: massage.isSender ? Colors.white : null,
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: massage.isSender
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.center,
        mainAxisAlignment:
            massage.isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (massage.isSender)
            Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: massage.massageStatu == MassageStatu.viewed
                    ? mPrimaryColor
                    : massage.massageStatu == MassageStatu.not_viewed
                        ? mPrimaryColor.withOpacity(0.2)
                        : Colors.red.withOpacity(0.4),
              ),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: massage.isSender
                  ? mPrimaryColor
                  : mPrimaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: massageContain(context),
          ),
          if (!massage.isSender)
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('images/ahmed magdy.jpg'),
              ),
            ),
        ],
      ),
    );
  }
}
