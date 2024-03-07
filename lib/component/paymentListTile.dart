// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import "package:dashboard_app/style/colors.dart";
import "package:dashboard_app/style/style.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class PaymentListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const PaymentListTile({@required this.icon, this.label, this.amount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50.0,
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(icon!),
      ),
      title: PrimaryText(
        text: label!,
        size: 14.0,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: "Sucessfully",
            size: 12.0,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: amount!,
            size: 16.0,
            color: AppColors.secondary,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
