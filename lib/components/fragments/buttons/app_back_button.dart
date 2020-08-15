import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roavapp/styles/colors.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/utils/typedefs.dart';
import 'package:roavapp/values/images.dart';

class AppBackButton extends StatelessWidget {
  final OnPressed onPressed;
  final bool _isPadded;

  const AppBackButton({
    this.onPressed,
  }) : _isPadded = true;

  const AppBackButton.plain({
    this.onPressed,
  }) : _isPadded = false;

  @override
  Widget build(BuildContext context) {
    final scaler = AppScaleUtil(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        child: Container(
          color: appWhite,
          padding: _isPadded ? scaler.insets.symmetric(vertical: .5, horizontal: 2) : scaler.insets.zero,
          child: SvgPicture.asset(
            AppSvgs.back,
          ),
        ),
        onTap: () {
          if (onPressed != null) {
            onPressed();
          } else {
            Navigator.of(context).maybePop();
          }
        },
      ),
    );
  }
}
