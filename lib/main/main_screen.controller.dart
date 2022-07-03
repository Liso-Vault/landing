import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MainScreenController extends GetxController with StateMixin {
  static MainScreenController get to => Get.find();

  // VARIABLES
  final scrollController = ScrollController();

  final autoScrollController = AutoScrollController(
    axis: Axis.vertical,
    suggestedRowHeight: 200,
    viewportBoundaryGetter: () =>
        Rect.fromLTRB(0, 0, 0, Get.mediaQuery.padding.bottom),
  );

  // PROPERTIES

  // GETTERS

  // INIT

  // FUNCTIONS

  void scrollToDownload() {
    autoScrollController.scrollToIndex(
      8,
      duration: 0.7.seconds,
      preferPosition: AutoScrollPosition.middle,
    );
  }

  void scrollToFeatures() {
    autoScrollController.scrollToIndex(
      10,
      duration: 0.7.seconds,
      preferPosition: AutoScrollPosition.begin,
    );
  }
}
