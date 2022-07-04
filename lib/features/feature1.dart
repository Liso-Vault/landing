import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:liso/core/utils/globals.dart';
import 'package:video_player/video_player.dart';

class Feature1 extends StatelessWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller_ = VideoPlayerController.network(
      'https://siasky.net/AADERgmxSazPT1eZ16ZXB0mB7sIvx_igGCqsTzt3n7hWDQ',
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
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Your ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'encrypted vault',
                      style: TextStyle(color: kColor),
                    ),
                    TextSpan(text: ' is safe and reliable'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Uses a powerful decentralized network of computers to route your encrypted data, making it impossible for anyone to leak or sell your data.',
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const ListTile(
                leading: Icon(LineIcons.check, color: kColor),
                title: Text('Military-grade Encrypted'),
                subtitle: Text(
                  'AES-256 Bit + CBC with PKCS7 Padding encryption',
                ),
              ),
              const ListTile(
                leading: Icon(LineIcons.check, color: kColor),
                title: Text('Decentralized'),
                subtitle: Text(
                  'No data breaches. Censorship Resistant.',
                ),
              ),
            ],
          ),
        ),
        // Image.asset(MockupsDesktop.feature1, width: 600),
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: AspectRatio(
            aspectRatio: controller_.value.aspectRatio,
            child: VideoPlayer(controller_),
          ),
        ),
      ],
    );
  }
}
