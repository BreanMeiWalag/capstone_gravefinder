import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/text_strings.dart';

class DashboardSearchCounter extends StatelessWidget {
  const DashboardSearchCounter({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tCardBgColor),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              tDashboardTotalCount,
              style: txtTheme.headline4,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "12345",
              style: txtTheme.bodyText2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
