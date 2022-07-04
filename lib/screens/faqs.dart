import 'package:flutter/material.dart';

import '../core/utils/globals.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: kColor,
      title: 'Liso - FAQs',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Frequently Asked Questions'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: const Text(
              'We are working on this page',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
