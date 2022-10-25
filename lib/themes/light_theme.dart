import 'package:flutter/material.dart';
import 'package:pet_doctor/constants/border.dart';
import 'package:pet_doctor/constants/color.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Light')
ThemeData getLightThemeData() => ThemeData(
      primarySwatch: Colors.green,
    );

ThemeData getLightTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: ColorConstants.lightFontColor,
          displayColor: ColorConstants.lightFontColor,
          decorationColor: ColorConstants.lightFontColor,
        ),
    scaffoldBackgroundColor: ColorConstants.backgroundColorLight,
    primaryColor: ColorConstants.primaryColor,
    iconTheme: IconThemeData(
      color: ColorConstants.lightFontColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          ColorConstants.primaryColor,
        ),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              BorderConstants.buttonRadius,
            ),
          ),
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: ColorConstants.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          BorderConstants.borderRadius,
        ),
      ),
    ),
  );
}
