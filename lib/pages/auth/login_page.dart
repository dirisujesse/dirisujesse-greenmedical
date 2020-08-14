import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roavapp/components/fragments/buttons/app_button.dart';
import 'package:roavapp/components/fragments/buttons/app_flat_button.dart';
import 'package:roavapp/components/fragments/spacers/app_sized_box.dart';
import 'package:roavapp/components/typography/app_text.dart';
import 'package:roavapp/styles/colors.dart';
import 'package:roavapp/styles/text_styles.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/values/images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final scaler = AppScaleUtil(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            padding: scaler.insets.symmetric(
              vertical: 2,
              horizontal: 7,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const AppSizedBox(height: 4),
                AppSizedBox(
                  height: 30,
                  child: SvgPicture.asset(
                    AppSvgs.loginHeader,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const AppSizedBox(height: 4),
                AppText(
                  "Welcome to\nGreen medical clinic",
                  style: boldText.copyWith(
                    fontSize: 70,
                  ),
                ),
                const AppSizedBox(height: 4),
                AppText(
                  "You can be connected to us and track your healing process with this app.",
                  style: normalText.copyWith(fontSize: 40),
                ),
                const AppSizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(hintText: "Phone number"),
                ),
                const AppSizedBox(height: 1.5),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                ),
                const AppSizedBox(height: 4),
                AppButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).pushNamed("/dashboard");
                  },
                  isBold: true,
                ),
                const AppSizedBox(height: 1),
                AppFlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/signup");
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "Signup",
                          style: boldText.copyWith(
                              fontSize: scaler.fontSizer.sp(35)),
                        ),
                      ],
                      style: normalText.copyWith(
                          color: appBlack, fontSize: scaler.fontSizer.sp(35)),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
