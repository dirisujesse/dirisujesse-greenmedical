import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roavapp/components/fragments/spacers/app_sized_box.dart';
import 'package:roavapp/components/typography/app_text.dart';
import 'package:roavapp/styles/colors.dart';
import 'package:roavapp/styles/text_styles.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/utils/intl_formatter.dart';
import 'package:roavapp/values/images.dart';

class CovidPage extends StatelessWidget {
  const CovidPage();

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
                  "Covid 19 news\nand updates",
                  style: boldText.copyWith(
                    fontSize: 50,
                  ),
                ),
                const AppSizedBox(height: 4),
                Container(
                  decoration: BoxDecoration(
                    color: appGrey,
                    borderRadius: BorderRadius.circular(
                      scaler.fontSizer.sp(15),
                    ),
                  ),
                  padding: scaler.insets.symmetric(
                    vertical: 3,
                    horizontal: 3,
                  ),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: {
                      0: FlexColumnWidth(4),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(4),
                    },
                    children: [
                      TableRow(
                        children: [
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText("Nigeria"),
                          ),
                          const SizedBox(),
                          const SizedBox(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              "total cases:",
                              style: normalText,
                            ),
                          ),
                          const SizedBox(),
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              AppFormatter.formatCurrencyInput("22233344"),
                              style: normalText,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              "total deaths:",
                              style: normalText,
                            ),
                          ),
                          const SizedBox(),
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              AppFormatter.formatCurrencyInput("22233344"),
                              style: normalText,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              "total recovered:",
                              style: normalText,
                            ),
                          ),
                          const SizedBox(),
                          Container(
                            margin: scaler.insets.only(
                              bottom: 1,
                            ),
                            child: AppText(
                              AppFormatter.formatCurrencyInput("22233344"),
                              style: normalText,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ],
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
