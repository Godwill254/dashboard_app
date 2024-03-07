// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import "package:dashboard_app/component/appBarActionItems.dart";
import "package:dashboard_app/style/colors.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "component/paymentDetailsList.dart";
import "component/sidemenu.dart";
import "config/size_config.dart";

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 30.0,
                  ),
                  child: Column(
                    children: [
                      AppBarActionItems(),
                      PaymentDetailsList(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
