import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:video_player/video_player.dart';

import '../../core/utils/globals.dart';

class Feature2 extends StatelessWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller_ = VideoPlayerController.network(
      'https://siasky.net/AACvsOx7iwfFjUeBMJyZQyt3arnQiEkmPdT-ie-8MVTulw',
      videoPlayerOptions: VideoPlayerOptions(),
    )
      ..initialize()
      ..setLooping(true)
      ..play();

    return Wrap(
      spacing: 50,
      runSpacing: 50,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      verticalDirection: VerticalDirection.up,
      children: [
        // Image.asset(ScreenshotsDesktop.desktop1, width: 600),
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: AspectRatio(
            aspectRatio: controller_.value.aspectRatio,
            child: VideoPlayer(controller_),
          ),
        ),
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
              const SizedBox(height: 20),
              const ListTile(
                leading: Icon(LineIcons.check, color: kColor),
                title: Text('Vault + Crypto Wallet and more'),
                subtitle: Text(
                  'Everything you need for maximum privacy and security',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
