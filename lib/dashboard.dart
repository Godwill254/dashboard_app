// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import "package:dashboard_app/component/appBarActionItems.dart";
import "package:dashboard_app/style/colors.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "component/sidemenu.dart";
import "config/size_config.dart";

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
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
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                child: Column(
                  children: [
                    AppBarActionItems(),
                    Column(
                      children: [
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.iconGray,
                                blurRadius: 15.0,
                                offset: const Offset(10.0, 15.0),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/card.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
