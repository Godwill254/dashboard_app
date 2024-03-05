// ignore_for_file: prefer_const_constructors, deprecated_member_use

import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../config/size_config.dart";
import "../style/colors.dart";

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            
            children: <Widget>[
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: SvgPicture.asset('assets/images/mac-action.svg'),
                ),
              ),
              //Home Icon
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/home.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20.0,
                ),
              ),
              //Pie Chart Icon
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/pie-chart.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20,
                ),
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/clipboard.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20,
                ),
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/credit-card.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20,
                ),
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/trophy.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20,
                ),
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/invoice.svg',
                    color: AppColors.iconGray,
                  ),
                  iconSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
