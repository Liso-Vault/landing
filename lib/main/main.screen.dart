import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../appbar/appbar.dart';
import '../download/download.dart';
import '../features/feature1.dart';
import '../features/feature2.dart';
import '../features/grid_features.dart';
import '../footer/footer.dart';
import '../header/header.dart';
import '../technologies/technologies.dart';
import 'main_screen.controller.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const children = [
      Header(),
      SizedBox(height: 100),
      Technologies(),
      SizedBox(height: 100),
      Feature1(),
      SizedBox(height: 100),
      Feature2(),
      SizedBox(height: 100),
      Download(),
      SizedBox(height: 100),
      GridFeatures(),
      Divider(height: 100),
      Footer(),
    ];

    final content = ListView(
      controller: controller.autoScrollController,
      padding: const EdgeInsets.all(50),
      children: children
          .asMap()
          .entries
          .map(
            (e) => AutoScrollTag(
              key: ValueKey(e.key),
              controller: controller.autoScrollController,
              index: e.key,
              child: e.value,
            ),
          )
          .toList(),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Scaffold(
        appBar: const MainAppBar(),
        // endDrawer: const MainDrawer(),
        body: content,
      ),
    );
  }
}
