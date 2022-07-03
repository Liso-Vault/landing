import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/utils/globals.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kSize = 35.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Find us on',
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 25,
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
        const SizedBox(height: 50),
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
