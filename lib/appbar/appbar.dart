import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liso/core/utils/console.dart';

import '../../core/utils/globals.dart';
import '../../resources/resources.dart';
import '../app/routes.dart';
import '../main/main_screen.controller.dart';

class MainAppBar extends StatelessWidget
    with ConsoleMixin
    implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(0, 80);

  @override
  Widget build(BuildContext context) {
    final actions = [
      // TextButton(
      //   onPressed: () {},
      //   child: const Text('Pricing'),
      // ),
      // TextButton(
      //   onPressed: () {},
      //   child: const Text('Security'),
      // ),
      // TextButton.icon(
      //   onPressed: () => launchUrlString(kDiscordUrl),
      //   icon: const Icon(LineIcons.discord),
      //   label: const Text('Discord'),
      // ),
      // TextButton(
      //   onPressed: () {},
      //   child: const Text('Blog'),
      // ),
      ElevatedButton(
        onPressed: MainScreenController.to.scrollToDownload,
        child: const Text('Download'),
      ),
      const SizedBox(width: 20),
    ];

    return AppBar(
      centerTitle: false,
      // actions: Utils.isSmallScreen ? null : actions,
      actions: actions,
      elevation: 0.0,
      // title: content,
      title: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () => Get.offNamedUntil(Routes.main, (route) => false),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(Images.logo, width: 50),
              const SizedBox(width: 15),
              const Text(
                kName,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
