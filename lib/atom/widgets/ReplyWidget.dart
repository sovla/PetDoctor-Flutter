//  Library ----------------------------
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//  Constants ----------------------------
import 'package:pet_doctor/constants/color.dart';
import 'package:pet_doctor/constants/border.dart';

//  Widgets ----------------------------
import 'package:pet_doctor/page/Community/Community_Home.dart';
import 'package:pet_doctor/atom/buttons/PopupMenuButton.dart';

class Pet_ReplyWidget extends StatelessWidget {
  const Pet_ReplyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: ColorConstants.borderGrayColor)),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: 100.r, minWidth: double.infinity),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingConstants.mainHorizontal,
              vertical: PaddingConstants.buttonVertical),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: PaddingConstants.spaceButton,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('닉네임'),
                      Text('닉네임'),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_alt_outlined))
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
              Text("내욧ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅁㅇㄴㅁㅇㅁㄴㅇㅎㅁㄴㅇㅁㄴ허ㅗㅇ허몬오ㅓㅁㄴㅎ오ㅓㅎㅁ노ㅓㅇ")
            ],
          ),
        ),
      ),
    );
  }
}
