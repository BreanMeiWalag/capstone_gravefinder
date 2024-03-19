import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/features/core/screens/dashboard/widgets/appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // variables
    //final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // //Heading
              // Text("$tDashboardTitle _loggedInUser_!",
              //     style: txtTheme.bodyText2),
              // Text(tDashboardHeading, style: txtTheme.headline2),
              // const SizedBox(height: tDashboardPadding),

              // //Search Box
              // DashboardSearchBox(txtTheme: txtTheme),
              // const SizedBox(height: tDashboardPadding),

              // //Datatype + total
              // const DashboardSummaryTotal(),
              // const SizedBox(height: tDashboardPadding),

              // //Search Counter
              // DashboardSearchCounter(txtTheme: txtTheme),
              // const SizedBox(height: tDashboardPadding),

              // //Categories + nav
              // Text(
              //   tDashboardCategories,
              //   style: txtTheme.headline4?.apply(fontSizeFactor: 1.2),
              // ),
              // const DashboardCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
