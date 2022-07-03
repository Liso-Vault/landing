import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kSize = 50.0;

    return Column(
      children: [
        const Text(
          'Powered by',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 40),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 100,
          runSpacing: 20,
          children: [
            Brand(
              text: 'Flutter',
              child: Image.asset(
                Brands.flutter,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Polygon',
              child: Image.asset(
                Brands.polygon,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Filebase',
              child: Image.asset(
                Brands.filebase,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Sia',
              child: Image.asset(
                Brands.sia,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'IPFS',
              child: Image.asset(
                Brands.ipfs,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Storj',
              child: Image.asset(
                Brands.storj,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Skynet',
              child: Image.asset(
                Brands.skynet,
                height: kSize,
                color: Colors.grey,
              ),
            ),
            Brand(
              text: 'Firebase',
              child: Image.asset(
                Brands.firebase,
                height: kSize,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Brand extends StatelessWidget {
  final Widget child;
  final String text;

  const Brand({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        const SizedBox(height: 20),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
