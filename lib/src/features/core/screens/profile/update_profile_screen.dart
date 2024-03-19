import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(tEditProfile, style: txtTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage(tProfileImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tFullName),
                        prefixIcon: Icon(Icons.person_outline_rounded),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tPhone),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: Icon(Icons.fingerprint),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tRole),
                        prefixIcon: Icon(Icons.account_tree_outlined),
                      ),
                    ),
                    const SizedBox(height: tFormHeight),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: tPrimaryColor,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          tEditProfile,
                          style: TextStyle(color: tDarkColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: tFormHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: tJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                text: tJoinedAt,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none,
                          ),
                          child: const Text(tDelete),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
