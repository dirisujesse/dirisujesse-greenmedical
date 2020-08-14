import 'package:flutter/material.dart';
import 'package:roavapp/components/typography/app_button_text.dart';
import 'package:roavapp/styles/colors.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/utils/typedefs.dart';

class AppButton extends StatelessWidget {
  final OnPressed onPressed;
  final Color color;
  final Color disabledColor;
  final Color textColor;
  final String text;
  final bool isDense;

  AppButton({
    @required this.text,
    @required this.onPressed,
    this.color = appTeal,
    this.textColor = appWhite,
    this.disabledColor = appGray,
    this.isDense = false,
  });

  @override
  Widget build(BuildContext context) {
    final scaler = AppScaleUtil(context);
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          scaler.fontSizer.sp(15),
        ),
      ),
      disabledColor: disabledColor,
      padding: scaler.insets.symmetric(vertical: isDense ? .8 : 1.5, horizontal: 2,),
      color: color,
      child: ButtonText(
        text,
        textColor: onPressed == null ? appBlack.withOpacity(.8) : textColor,
      ),
      onPressed: onPressed,
    );
  }
}
