import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/utils/globals.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = Get.mediaQuery.size.width <= 450 ? 130.0 : 200.0;

    return Card(
      elevation: 0.2,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            const Text(
              'Download',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'To get started, download and create a vault without signing up.\nJust your private key.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Wrap(
              runSpacing: 10,
              spacing: 20,
              alignment: WrapAlignment.center,
              children: [
                Column(
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
                    const SizedBox(height: 10),
                    const Text(
                      kIOSVersion,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
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
                    const SizedBox(height: 10),
                    const Text(
                      kAndroidVersion,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
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
                    const SizedBox(height: 10),
                    const Text(
                      kMacOSVersion,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
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
                    const SizedBox(height: 10),
                    const Text(
                      kWindowsOSVersion,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
