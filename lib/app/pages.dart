import 'package:liso/main/main.screen.dart';
import 'package:liso/main/main_screen.binding.dart';
import 'package:get/get.dart';
import 'package:liso/screens/faqs.dart';
import 'package:liso/screens/privacy.dart';
import 'package:liso/screens/terms.dart';

import '../screens/roadmap.dart';
import 'routes.dart';

class AppPages {
  static const initial = Routes.main;

  static final routes = [
    // MAIN
    GetPage(
      name: Routes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.privacy,
      page: () => const PrivacyScreen(),
    ),
    GetPage(
      name: Routes.terms,
      page: () => const TermsScreen(),
    ),
    GetPage(
      name: Routes.faqs,
      page: () => const FAQScreen(),
    ),
    GetPage(
      name: Routes.roadmap,
      page: () => const RoadmapScreen(),
    ),
  ];
}
