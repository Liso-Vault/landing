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
        Image.asset(Images.logo, width: 200),
        const SizedBox(height: 15),
        const Text(
          kAppName,
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 15),
        const Text(
          kAppDescription,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        const Divider(height: 30),
        const Text(
          'Join the beta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
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
                  'iOS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(LineIcons.appStore),
                onPressed: null,
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
                onPressed: null,
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
        const Divider(height: 20),
        const Text(
          kAppInviteText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          kAppAirdropText,
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
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
              icon: const Icon(LineIcons.twitter),
              label: const Text('@Liso_Vault'),
              onPressed: () => launchUrlString(kAppTwitterUrl),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              icon: const Icon(LineIcons.discord),
              label: const Text('Discord'),
              onPressed: () => launchUrlString(kAppDiscordUrl),
            ),
            // IconButton(
            //   icon: const Icon(LineIcons.discord),
            //   onPressed: () => launchUrlString(kAppTwitterUrl),
            // ),
            // IconButton(
            //   icon: const Icon(LineIcons.twitter),
            //   onPressed: () => launchUrlString(kAppTwitterUrl),
            // ),
            // IconButton(
            //   icon: const Icon(LineIcons.twitter),
            //   onPressed: () => launchUrlString(kAppTwitterUrl),
            // ),
          ],
        ),
        const Divider(height: 20),
        TextButton.icon(
          icon: const Icon(LineIcons.twitter),
          label: const Text(kDeveloperTwitterHandle),
          onPressed: () => launchUrlString(kDeveloperTwitterUrl),
        ),
        const Text(
          'Developer',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        const Divider(height: 20),
        const Text(
          'By installing and using $kAppName, you agree to our',
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
