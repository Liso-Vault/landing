import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/utils/globals.dart';
import '../app/routes.dart';
import '../core/utils/ui_utils.dart';
import '../resources/resources.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kSize = 35.0;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Images.logo, width: 30),
                const SizedBox(width: 15),
                const Text(
                  kName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Wrap(
              spacing: Utils.isSmallScreen ? 0 : 25,
              children: [
                IconButton(
                  onPressed: () => launchUrlString(kGitHubUrl),
                  icon: const Icon(LineIcons.github, size: kSize),
                ),
                IconButton(
                  onPressed: () => launchUrlString(kDiscordUrl),
                  icon: const Icon(LineIcons.discord, size: kSize),
                ),
                IconButton(
                  onPressed: () => launchUrlString(kTwitterUrl),
                  icon: const Icon(LineIcons.twitter, size: kSize),
                ),
                IconButton(
                  onPressed: () => launchUrlString(kProductHuntUrl),
                  icon: const Icon(LineIcons.productHunt, size: kSize),
                ),
                // IconButton(
                //   onPressed: () => launchUrlString(kGitHubUrl),
                //   icon: const Icon(LineIcons.telegram, size: kSize),
                // ),
                // IconButton(
                //   onPressed: () => launchUrlString(kGitHubUrl),
                //   icon: const Icon(LineIcons.redditLogo, size: kSize),
                // ),
                // IconButton(
                //   onPressed: () => launchUrlString(kGitHubUrl),
                //   icon: const Icon(LineIcons.youtube, size: kSize),
                // ),
                // IconButton(
                //  onPressed: () => launchUrlString(kGitHubUrl),
                //   icon: const Icon(LineIcons.facebook, size: kSize),
                // ),
                // IconButton(
                //  onPressed: () => launchUrlString(kGitHubUrl),
                //   icon: const Icon(LineIcons.instagram, size: kSize),
                // ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Wrap(
          children: [
            TextButton(
              onPressed: () => Get.toNamed(Routes.terms),
              child: const Text('Terms'),
            ),
            TextButton(
              onPressed: () => Get.toNamed(Routes.privacy),
              child: const Text('Privacy'),
            ),
            // TextButton(
            //   onPressed: () => Get.toNamed(Routes.roadmap),
            //   child: const Text('Roadmap'),
            // ),
          ],
        ),
        const Divider(height: 100),
        const Text(
          '© 2022 $kDeveloperName. All rights reserved.',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 10),
        const Text(
          'Bacolod City, Negros Occidental, 6100, Philippines',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
