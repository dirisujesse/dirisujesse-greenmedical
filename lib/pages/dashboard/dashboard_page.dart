import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roavapp/components/fragments/list_items/dashboard_list_item.dart';
import 'package:roavapp/components/fragments/spacers/app_sized_box.dart';
import 'package:roavapp/components/typography/app_text.dart';
import 'package:roavapp/styles/colors.dart';
import 'package:roavapp/styles/text_styles.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/values/json.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage();

  Widget build(BuildContext context) {
    final scaler = AppScaleUtil(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            padding: scaler.insets.symmetric(
              vertical: 4,
              horizontal: 7,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                AppText(
                  "Welcome, Kenneth",
                  style: boldText.copyWith(
                    fontSize: 50,
                  ),
                ),
                const AppSizedBox(height: 4),
                for (final item in dashItems)
                  DashboardListItem(
                    leading: SvgPicture.asset(
                      item.icon,
                      height: scaler.fontSizer.sp(90),
                      width: scaler.fontSizer.sp(90),
                    ),
                    title: item.title,
                    isActive: item.title == "Discharged" || item.title == "Visit a doctor",
                    activeColor: item.title == "Discharged" ? appOrange : item.title == "Visit a doctor" ? appTeal : appGray,
                    onTap: () {
                      Navigator.of(context).pushNamed(item.route);
                    },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
