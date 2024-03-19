import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/text_strings.dart';

class DashboardSearchBox extends StatelessWidget {
  const DashboardSearchBox({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashboardSearch,
            style:
                txtTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          const Icon(Icons.search, size: 25.0),
        ],
      ),
    );
  }
}
