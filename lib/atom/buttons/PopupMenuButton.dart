import 'package:flutter/material.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

class Pet_PopupMenuButton extends StatelessWidget {
  Pet_PopupMenuButton({
    Key? key,
    this.menuItems,
    this.value = "최신순",
  }) : super(key: key);
  final List<PopupMenuItem>? menuItems;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        PopupMenuButton(
          tooltip: "메뉴보기",
          itemBuilder: (context) {
            return menuItems ??
                [
                  PopupMenuItem(child: Text("최신순")),
                  PopupMenuItem(child: Text("최신순"))
                ];
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.backgroundColorDark)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  PaddingConstants.buttonHorizontal,
                  PaddingConstants.buttonVertical,
                  0,
                  PaddingConstants.buttonVertical),
              child: Row(
                children: [Text(value), Icon(Icons.arrow_drop_down)],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
