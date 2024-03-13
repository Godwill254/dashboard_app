// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/style.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: "Dashboard",
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: "Payment updates",
                size: 16.0,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.only(
                left: 40.0,
                right: 5.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.black,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: AppColors.secondary,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}