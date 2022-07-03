import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:liso/core/utils/globals.dart';

class GridFeatures extends StatelessWidget {
  const GridFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kSize = 100.0;

    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: const Text(
            "Features",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Works Offline',
              body:
                  'Whether you are connected to the internet or not. It just works.',
              image: Icon(
                Icons.wifi_off_rounded,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Biometric Auth',
              body:
                  'Conveniently decrypt and access your vault with your Fingerprint or Face biometrics',
              image: Icon(
                LineIcons.fingerprint,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Shared Vaults',
              body:
                  'Effortlessly share your vaults with other users in a secure environment',
              image: Icon(
                Iconsax.share,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Sync Devices',
              body: 'Enjoy automatic syncing between all your devices',
              image: Icon(
                LineIcons.syncIcon,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Generate Passwords',
              body:
                  'A powerful password generator is built-in to ensure your future passwords are very strong',
              image: Icon(
                LineIcons.userLock,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Cloud Storage',
              body:
                  'Encrypt and store your precious files on a secure and decentralized cloud storage network',
              image: Icon(
                Iconsax.cloud,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Crypto Wallet',
              body:
                  'Securely store your cryptocurrencies and NFTs in a secure and built-in crypto wallet.',
              image: Icon(
                LineIcons.wallet,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Cipher Tool',
              body:
                  'Protect your files with AES-256 encryption before sending them to friends or coworkers.',
              image: Icon(
                LineIcons.alternateShield,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Customizations',
              body:
                  'Create custom fields, categories, and vaults. Even re-order fields as you edit.',
              image: Icon(
                Iconsax.edit,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Zero-Knowledge',
              body:
                  'No phone numbers, emails, or personal identifiable information required to get started. Just your private key.',
              image: Icon(
                LineIcons.wallet,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Open Source',
              body:
                  'Ensure the integrity and security of your vault by self auditing and verifying the code.',
              image: Icon(
                Iconsax.code,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Cross Platform',
              body:
                  'Available on iOS, iPadOS, MacOS, Android, and Windows. (Soon on Linux and the Web)',
              image: Icon(
                Iconsax.cpu,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Password Health',
              body:
                  'Monitor weak passwords and suggest to generate a strong password',
              image: Icon(
                Iconsax.health,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Seed Generator',
              body:
                  'Generate a 12 or 24 word mnemonic seed phrase for your next Web3 wallet',
              image: Icon(
                Iconsax.key,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'OTP Generator',
              body:
                  'Store and generate One Time Passwords for your social accounts and websites you use',
              image: Icon(
                Iconsax.password_check,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 50,
          runSpacing: 50,
          alignment: WrapAlignment.center,
          children: const [
            GridFeature(
              title: 'Multiple Vaults',
              body:
                  'Keep everything organized with separate vaults for work, personal, family, or your custom vault.',
              image: Icon(
                Iconsax.box,
                size: kSize,
                color: kColor,
              ),
            ),
            GridFeature(
              title: 'Themes',
              body:
                  'Switch to Dark or Light themes according to your taste or automatically.',
              image: Icon(
                Iconsax.paintbucket,
                size: kSize,
                color: kColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GridFeature extends StatelessWidget {
  final String title;
  final String body;
  final Widget image;

  const GridFeature({
    Key? key,
    required this.title,
    required this.body,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Container(
        padding: const EdgeInsets.all(30),
        constraints: const BoxConstraints(maxWidth: 400, minHeight: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Text(
              body,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
