import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/core/screens/profile/profile_screen.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {},
        child: const Icon(Icons.menu, color: Colors.black),
      ),
      title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
              onPressed: () {
                // AuthenticationRepository.instance.logout();
                Get.to(() => const ProfileScreen());
              },
              icon: const Icon(Icons.person, size: 30.0)),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
