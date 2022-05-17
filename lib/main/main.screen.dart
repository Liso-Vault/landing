import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:liso/core/utils/globals.dart';
import 'package:liso/core/utils/styles.dart';
import 'package:liso/resources/resources.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../app/routes.dart';
import 'main_screen.controller.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = Get.mediaQuery.size.width <= 450 ? 130.0 : 200.0;

    final content = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Images.logo, width: 170),
        const SizedBox(height: 30),
        const Text(
          kName,
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 5),
        Text(
          kDescription,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
        ),
        const Divider(height: 0),
        const SizedBox(height: 20),
        const Text(
          'Join the beta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          kBetaSubText,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),
        Wrap(
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'iOS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.appStore),
                onPressed: () => launchUrlString(kIOSUrl),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'Android',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.googlePlay),
                onPressed: () => launchUrlString(kAndroidUrl),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'Mac',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.appStore),
                onPressed: () => launchUrlString(kMacOSUrl),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'Windows',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.windows),
                onPressed: () => launchUrlString(kWindowsUrl),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'Linux',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.linux),
                onPressed: null,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton.icon(
                label: const Text(
                  'Web',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.chrome),
                onPressed: null,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          kInviteText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          kAirdropText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        const Divider(height: 40),
        const Text(
          'Connect',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            TextButton.icon(
              icon: const Icon(LineIcons.twitter),
              label: const Text('Twitter'),
              onPressed: () => launchUrlString(kTwitterUrl),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              icon: const Icon(LineIcons.discord),
              label: const Text('Discord'),
              onPressed: () => launchUrlString(kDiscordUrl),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              icon: const Icon(LineIcons.envelope),
              label: const Text('Email'),
              onPressed: () => launchUrlString(kEmail),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              icon: const Icon(LineIcons.github),
              label: const Text('GitHub'),
              onPressed: () => launchUrlString(kGitHubUrl),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              icon: const Icon(LineIcons.productHunt),
              label: const Text('ProductHunt'),
              onPressed: () => launchUrlString(kProductHuntUrl),
            ),
          ],
        ),
        const Divider(height: 50),
        Image.asset(Images.stackwares, width: 50),
        const SizedBox(height: 20),
        const Text(
          kDeveloperName,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        TextButton(
          child: const Text(kDeveloperWebsite),
          onPressed: () => launchUrlString(kDeveloperWebsite),
        ),
        const Text(
          'Developer & Maintainer',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        const Divider(height: 20),
        const Text(
          'By installing and using $kName, you agree to our',
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
              onPressed: () => Get.toNamed(Routes.privacy),
              icon: const Icon(LineIcons.alternateExternalLink),
              label: const Text('Privacy'),
            ),
            const Text('and'),
            TextButton.icon(
              onPressed: () => Get.toNamed(Routes.terms),
              icon: const Icon(LineIcons.alternateExternalLink),
              label: const Text('Terms'),
            ),
          ],
        )
      ],
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            constraints: Styles.containerConstraints,
            child: content,
          ),
        ),
      ),
    );
  }
}
