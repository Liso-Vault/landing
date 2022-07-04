import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liso/core/utils/globals.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../appbar/appbar.dart';
import '../core/utils/ui_utils.dart';
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
    final spacing = Utils.isSmallScreen ? 50.0 : 100.0;

    final children = [
      const Header(),
      SizedBox(height: spacing),
      const Technologies(),
      SizedBox(height: spacing),
      const Feature1(),
      SizedBox(height: spacing),
      const Feature2(),
      SizedBox(height: spacing),
      const Download(),
      SizedBox(height: spacing),
      const GridFeatures(),
      Divider(height: spacing),
      const Footer(),
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

    return Title(
      color: kColor,
      title: 'Liso Password Manager',
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Scaffold(
          appBar: const MainAppBar(),
          // endDrawer: const MainDrawer(),
          body: content,
        ),
      ),
    );
  }
}
