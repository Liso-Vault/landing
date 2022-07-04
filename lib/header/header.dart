import 'package:flutter/material.dart';
import 'package:liso/core/utils/globals.dart';
import 'package:liso/main/main_screen.controller.dart';
import 'package:liso/resources/resources.dart';

import '../../core/utils/ui_utils.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'The ',
                  style: TextStyle(
                    fontSize: Utils.isSmallScreen ? 40 : 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Password Manager',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(text: ' modernized by '),
                    TextSpan(
                      text: 'Crypto',
                      style: TextStyle(color: kColor),
                    ),
                    TextSpan(text: ' + '),
                    TextSpan(
                      text: 'Decentralized',
                      style: TextStyle(color: kColor),
                    ),
                    TextSpan(text: ' tech'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'A complex piece of ',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'open-source',
                      style: TextStyle(
                        color: kColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' software made very easy to use for end users. Built with ',
                    ),
                    TextSpan(
                      text: 'cutting-edge',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text:
                          ' tech and designed to securely store your most precious ',
                    ),
                    TextSpan(
                      text: 'passwords, seed phrases, files, cryptocurrencies',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'NFTs',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: ' where ',
                    ),
                    TextSpan(
                      text: 'only you',
                      style: TextStyle(
                        color: kColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' can decrypt and access.'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: [
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: MainScreenController.to.scrollToDownload,
                      child: const Text('Get Started'),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      onPressed: MainScreenController.to.scrollToFeatures,
                      child: const Text('Features'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Image.asset(MockupsDesktop.main, width: double.infinity),
      ],
    );
  }
}
