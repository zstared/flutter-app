import 'package:flutter/material.dart';

class ThemeColors{
  static const String primaryValueString = "#f5f5f5";
  static const String primaryLightValueString = "#fafafa";
  static const String primaryDarkValueString = "#eeeeee";
  static const String miWhiteString = "#ececec";
  static const String actionString = "#f23642";
  static const String webDraculaBackgroundColorString = "#282a36";

  static const int primaryValue = 0xFFF5F5F5;
  static const int primaryLightValue = 0xFFFAFAFA;
  static const int primaryDarkValue = 0xFFEEEEEE;
   
  static const int cardWhite = 0xFFFFFFFF;
  static const int textWhite = 0xFFFFFFFF;
  static const int miWhite = 0xffececec;
  static const int white = 0xFFFFFFFF;
  static const int action = 0xfff23642;
  static const int subTextColor = 0xff959595;
  static const int subLightTextColor = 0xffc4c4c4;

  static const int mainBackgroundColor = miWhite;

  static const int mainTextColor = 0xff121917;
  static const int textColorWhite = white;

  static const MaterialColor primarySwatch = const MaterialColor(
    primaryValue,
    const <int, Color>{
      50: const Color(primaryLightValue),
      100: const Color(primaryLightValue),
      200: const Color(primaryLightValue),
      300: const Color(primaryLightValue),
      400: const Color(primaryLightValue),
      500: const Color(primaryValue),
      600: const Color(primaryDarkValue),
      700: const Color(primaryDarkValue),
      800: const Color(primaryDarkValue),
      900: const Color(primaryDarkValue),
    },
  );
}

class ThemeTextStyle {

  static const lagerTextSize = 30.0;
  static const bigTextSize = 24.0;
  static const normalTextSize = 16.0;
  static const middleTextWhiteSize = 14.0;
  static const smallTextSize = 12.0;
  static const minTextSize = 10.0;

  static const minText = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: minTextSize,
  );

  static const smallTextWhite = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: smallTextSize,
  );

  static const smallText = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: smallTextSize,
  );

  static const smallTextBold = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: smallTextSize,
    fontWeight: FontWeight.bold,
  );

  static const smallSubLightText = TextStyle(
    color: Color(ThemeColors.subLightTextColor),
    fontSize: smallTextSize,
  );

  static const smallActionLightText = TextStyle(
    color: Color(ThemeColors.action),
    fontSize: smallTextSize,
  );

  static const smallMiLightText = TextStyle(
    color: Color(ThemeColors.miWhite),
    fontSize: smallTextSize,
  );

  static const smallSubText = TextStyle(
    color: Color(ThemeColors.subTextColor),
    fontSize: smallTextSize,
  );

  static const middleText = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: middleTextWhiteSize,
  );

  static const middleTextWhite = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: middleTextWhiteSize,
  );

  static const middleSubText = TextStyle(
    color: Color(ThemeColors.subTextColor),
    fontSize: middleTextWhiteSize,
  );

  static const middleSubLightText = TextStyle(
    color: Color(ThemeColors.subLightTextColor),
    fontSize: middleTextWhiteSize,
  );

  static const middleTextBold = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const middleTextWhiteBold = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const middleSubTextBold = TextStyle(
    color: Color(ThemeColors.subTextColor),
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static const normalText = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: normalTextSize,
  );

  static const normalTextBold = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalSubText = TextStyle(
    color: Color(ThemeColors.subTextColor),
    fontSize: normalTextSize,
  );

  static const normalTextWhite = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: normalTextSize,
  );

  static const normalTextMitWhiteBold = TextStyle(
    color: Color(ThemeColors.miWhite),
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalTextActionWhiteBold = TextStyle(
    color: Color(ThemeColors.action),
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static const normalTextLight = TextStyle(
    color: Color(ThemeColors.primaryLightValue),
    fontSize: normalTextSize,
  );

  static const largeText = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: bigTextSize,
  );

  static const largeTextBold = TextStyle(
    color: Color(ThemeColors.mainTextColor),
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeTextWhite = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: bigTextSize,
  );

  static const largeTextWhiteBold = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeTextWhite = TextStyle(
    color: Color(ThemeColors.textColorWhite),
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeText = TextStyle(
    color: Color(ThemeColors.primaryValue),
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );
}

class CustomIcons{
    static const String FONT_FAMILY='wxcIconFont';

    static const IconData app_message=const IconData(0xeb97,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_message_fill=const IconData(0xebac,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_schedule=const IconData(0xeb91,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_schedule_fill=const IconData(0xeba5,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_work=const IconData(0xeba1,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_work_fill=const IconData(0xebb1,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_addresslist=const IconData(0xeb8f,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_addresslist_fill=const IconData(0xeba4,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_my=const IconData(0xeb9e,fontFamily: CustomIcons.FONT_FAMILY);
    static const IconData app_my_fill=const IconData(0xebaf,fontFamily: CustomIcons.FONT_FAMILY);
    
}