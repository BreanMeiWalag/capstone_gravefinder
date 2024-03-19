import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          DashboardCategoryCardWidget(
              title: tDashboardCategoryTitle1,
              subtitle: "subtitle",
              subtext: "subtext",
              image: tDashboardCategoryImage1),
          DashboardCategoryCardWidget(
              title: tDashboardCategoryTitle2,
              subtitle: "subtitle",
              subtext: "subtext",
              image: tDashboardCategoryImage2),
          DashboardCategoryCardWidget(
              title: tDashboardCategoryTitle3,
              subtitle: "subtitle",
              subtext: "subtext",
              image: tDashboardCategoryImage3),
          DashboardCategoryCardWidget(
              title: tDashboardCategoryTitle4,
              subtitle: "subtitle",
              subtext: "subtext",
              image: tDashboardCategoryImage4),
        ],
      ),
    );
  }
}

class DashboardCategoryCardWidget extends StatelessWidget {
  const DashboardCategoryCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtext,
    required this.image,
  });

  final String title, subtitle, subtext, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tCardBgColor),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Image(
                    image: AssetImage(image),
                    height: 110,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: const Icon(
                    Icons.play_arrow,
                  ),
                ),
                const SizedBox(width: tDashboardPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subtext,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
