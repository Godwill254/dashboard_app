// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import "package:dashboard_app/style/colors.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "config/size_config.dart";

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 100,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child:
                              SvgPicture.asset('assets/images/mac-action.svg'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/home.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/pie-chart.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/clipboard.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/credit-card.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/trophy.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/invoice.svg',
                          color: AppColors.iconGray,
                        ),
                        iconSize: 20,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
