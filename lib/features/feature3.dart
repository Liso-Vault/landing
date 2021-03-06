import 'package:flutter/material.dart';

import '../../core/utils/globals.dart';
import '../../resources/resources.dart';

class Feature2 extends StatelessWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 50,
      runSpacing: 50,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      verticalDirection: VerticalDirection.up,
      children: [
        Image.asset(ScreenshotsDesktop.desktop1, width: 600),
        Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'All-in-one ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: kColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'app for power users',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Save a wide array of data like passwords, mnemonic seed phrases, identifications, and more. Generate OTP (One-Time Passwords). Encrypt and upload files on a decentralized cloud storage provider. Store cryptocurrencies, NFTs and more.',
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
