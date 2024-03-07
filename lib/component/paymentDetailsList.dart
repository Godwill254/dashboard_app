// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:dashboard_app/data.dart";
import "package:dashboard_app/style/style.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

import "../config/size_config.dart";
import "../style/colors.dart";
import "paymentListTile.dart";

class PaymentDetailsList extends StatelessWidget {
  const PaymentDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Recent Activities',
                size: 18,
                fontWeight: FontWeight.w800),
            PrimaryText(
              text: '02 Feb 2000',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) => PaymentListTile(
              icon: recentActivities[index]["icon"],
              label: recentActivities[index]["label"],
              amount: recentActivities[index]["amount"],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Upcoming Payments',
                size: 18,
                fontWeight: FontWeight.w800),
            PrimaryText(
              text: '02 Feb 2000',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (index) => PaymentListTile(
              icon: upcomingPayments[index]["icon"],
              label: upcomingPayments[index]["label"],
              amount: upcomingPayments[index]["amount"],
            ),
          ),
        ),
      ],
    );
  }
}
