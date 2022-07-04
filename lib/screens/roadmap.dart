import 'package:flutter/material.dart';
import 'package:liso/core/utils/globals.dart';

class RoadmapScreen extends StatelessWidget {
  const RoadmapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: kColor,
      title: 'Liso - Roadmap',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Roadmaps'),
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
