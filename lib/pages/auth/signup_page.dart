import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roavapp/components/fragments/buttons/app_button.dart';
import 'package:roavapp/components/fragments/spacers/app_sized_box.dart';
import 'package:roavapp/components/typography/app_text.dart';
import 'package:roavapp/styles/text_styles.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/values/images.dart';

class SignupPage extends StatefulWidget {
  const SignupPage();

  @override
  State<StatefulWidget> createState() {
    return _SignupPageState();
  }
}

class _SignupPageState extends State<SignupPage> {
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: SvgPicture.asset(AppSvgs.back),
                    onTap: () {
                      Navigator.of(context).maybePop();
                    },
                  ),
                ),
                const AppSizedBox(height: 4),
                AppText(
                  "Signup",
                  style: boldText.copyWith(
                    fontSize: 70,
                  ),
                ),
                const AppSizedBox(height: 4),
                AppText(
                  "Please ensure to provide the correct details below",
                  style: normalText.copyWith(fontSize: 40),
                ),
                const AppSizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(hintText: "Full name"),
                ),
                const AppSizedBox(height: 1.5),
                TextFormField(
                  decoration: InputDecoration(hintText: "Phone number"),
                ),
                const AppSizedBox(height: 1.5),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: scaler.insets.symmetric(
          horizontal: 7,
        ),
        margin: scaler.insets.only(bottom: 4),
        constraints: BoxConstraints.tightFor(
          height: scaler.fontSizer.sp(140),
        ),
        child: AppButton(
          text: "Signup",
          onPressed: () {
            Navigator.of(context).pushNamed("/login");
          },
          isBold: true,
        ),
      ),
    );
  }
}
