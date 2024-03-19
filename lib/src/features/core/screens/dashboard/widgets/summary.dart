import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/custom_icons.dart';

class DashboardSummaryTotal extends StatelessWidget {
  const DashboardSummaryTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          DashboardDataTypeTotalWidget(
            iconData: CustomIcons.burialPlot,
            title: "Burial Plots",
            subTitle: "_12345",
          ),
          DashboardDataTypeTotalWidget(
            iconData: CustomIcons.deceased,
            title: "Deceased",
            subTitle: "_12345",
          ),
          DashboardDataTypeTotalWidget(
            iconData: Icons.person,
            title: "Accounts",
            subTitle: "_12345",
          ),
        ],
      ),
    );
  }
}

class DashboardDataTypeTotalWidget extends StatelessWidget {
  const DashboardDataTypeTotalWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
  });

  final IconData iconData;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 50,
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: tDarkColor,
            ),
            child: Center(
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
