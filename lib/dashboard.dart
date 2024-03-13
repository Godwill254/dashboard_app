// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import "package:dashboard_app/component/appBarActionItems.dart";
import "package:dashboard_app/component/barChart.dart";
import "package:dashboard_app/component/historyTable.dart";

import "package:dashboard_app/style/colors.dart";
import "package:dashboard_app/style/style.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "component/header.dart";
import "component/infoCard.dart";
import "component/paymentDetailsList.dart";
import "component/sidemenu.dart";
import "config/responsive.dart";
import "config/size_config.dart";

class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(
        width: 100.0,
        child: SideMenu(

        ),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            if (Responsive.isDesktop(context))
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20.0,
                          spacing: 20.0,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              icon: 'assets/images/credit-card.svg',
                              label: "Transfer via \n Card number",
                              amount: "\$2000",
                            ),
                            InfoCard(
                              icon: 'assets/images/transfer.svg',
                              label: "Transfer via \n Card number",
                              amount: "\$2000",
                            ),
                            InfoCard(
                              icon: 'assets/images/bank.svg',
                              label: "Transfer via \n Online Banks",
                              amount: "\$2000",
                            ),
                            InfoCard(
                              icon: 'assets/images/bank.svg',
                              label: "Transfer via \n Same Bank",
                              amount: "\$2000",
                            ),
                            InfoCard(
                              icon: 'assets/images/invoice.svg',
                              label: "Transfer via \n Other Bank",
                              amount: "\$2000",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                text: "Balance",
                                size: 16,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                text: "\$1500",
                                size: 30,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          PrimaryText(
                            text: "Past 30 days",
                            size: 16,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      ),
                      Container(
                        height: 180,
                        child: BarChartComponent(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: "History",
                            size: 30,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: "Transaction of last 6 months",
                            size: 20,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      ),
                      HistoryTable(),
                    ],
                  ),
                ),
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
