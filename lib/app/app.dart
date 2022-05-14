import 'package:liso/app/pages.dart';
import 'package:liso/app/routes.dart';
import 'package:liso/general/unknown.screen.dart';
import 'package:liso/main/main_screen.binding.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/globals.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const subThemes = FlexSubThemesData(
      fabUseShape: false,
      thinBorderWidth: 0.2,
      thickBorderWidth: 0.5,
      inputDecoratorUnfocusedHasBorder: true,
      inputDecoratorIsFilled: false,
      inputDecoratorRadius: 5,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorUnfocusedBorderIsColored: false,
    );

    // MATERIAL APP
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // LOCALE
      // translationsKeys: translationKeys,
      // locale: Locale(persistence.localeCode.val),
      fallbackLocale: const Locale('en', 'US'),
      // NAVIGATION
      initialRoute: Routes.main,
      initialBinding: MainBinding(),
      getPages: AppPages.routes,
      defaultTransition: Transition.native,
      transitionDuration: 200.milliseconds,
      // THEMING
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.green,
        colors: FlexSchemeColor.from(primary: kColor),
        appBarElevation: 0.3,
        subThemesData: subThemes,
        onSurface: Colors.grey.shade500, // popupmenu background color
        scaffoldBackground: const Color(0xFF161616),
        background: const Color(0xFF1C1C1C), // drawer background color
        textTheme: const TextTheme(
          // bodyText2: TextStyle(fontSize: 20.0),
          button: TextStyle(fontSize: 17),
        ),
      ).toTheme,
      themeMode: ThemeMode.dark,
      // UNKNOWN ROUTE FALLBACK SCREEN
      unknownRoute: GetPage(
        name: Routes.unknown,
        page: () => const UnknownScreen(),
      ),
    );
  }
}
