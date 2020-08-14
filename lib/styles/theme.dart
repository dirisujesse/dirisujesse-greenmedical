import 'package:flutter/material.dart';
import 'package:roavapp/styles/colors.dart';

ThemeData appThemeData() {
  final base = ThemeData.dark();
  return base.copyWith(
    textSelectionHandleColor: appTeal,
    highlightColor: appTeal,
    cursorColor: appTeal,
    appBarTheme: base.appBarTheme.copyWith(
      color: appTransparent,
      elevation: 0,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: appTeal,
        )
      ),
      unselectedLabelColor: appDarkGrey,
      labelColor: appBlack,
    ),
    brightness: Brightness.light,
    bottomAppBarColor: appTransparent,
    accentColor: teal,
    primaryColor: white,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: appTeal,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: appTeal,
      foregroundColor: appWhite,
    ),
    popupMenuTheme: base.popupMenuTheme.copyWith(color: appGrey),
    scaffoldBackgroundColor: appWhite,
    backgroundColor: appWhite,
    cardColor: white,
    textSelectionColor: appTeal.withOpacity(.4),
    errorColor: appRed,
    textTheme: base.textTheme
        .apply(
          displayColor: appBlack,
          bodyColor: appWhite,
          fontFamily: 'Ubuntu',
        ),
    primaryIconTheme: base.iconTheme.copyWith(
      size: 30,
      color: appBlack,
    ),
    indicatorColor: appTeal,
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      helperMaxLines: 3,
      isDense: true,
      filled: false,
      suffixStyle: TextStyle(color: appBlack.withOpacity(.5)),
      prefixStyle: TextStyle(color: appBlack.withOpacity(.5)),
      labelStyle: TextStyle(
        color: appBlack.withOpacity(.5),
        fontSize: base.textTheme.bodyText1.fontSize,
      ),
      helperStyle: TextStyle(
        color: appBlack.withOpacity(.5),
        fontSize: base.textTheme.bodyText1.fontSize,
      ),
      hintStyle: TextStyle(
        color: appBlack.withOpacity(.5),
        fontSize: base.textTheme.bodyText1.fontSize,
      ),
      errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appRed,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(3),),
      focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appRed,
            width: 4.5,
          ),
          borderRadius: BorderRadius.circular(3),),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: appGray,
          width: 4,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: appGray.withOpacity(.8),
          width: 4
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: appGray,
          width: 4.5
        ),
      ),
    ),
    iconTheme: base.iconTheme.copyWith(
      color: appBlack,
      size: 30,
    ),
  );
}
