import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liso/app/pages.dart';
import 'package:liso/app/routes.dart';
import 'package:liso/general/unknown.screen.dart';
import 'package:liso/main/main_screen.binding.dart';

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

    const kBackgroundColor = Color(0xFF111111);
    // final visualDensity = MediaQuery.of(context).size.width > 1000
    //     ? const VisualDensity(
    //         horizontal: VisualDensity.maximumDensity,
    //         vertical: VisualDensity.maximumDensity,
    //       )
    //     : VisualDensity.standard;

    final app = GetMaterialApp(
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
        visualDensity: VisualDensity.standard,
        subThemesData: subThemes,
        onSurface: Colors.grey.shade500, // popupmenu background color
        scaffoldBackground: kBackgroundColor,
        background: kBackgroundColor, // drawer background color
        textTheme: TextTheme(
          bodyText2: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.grey.shade100,
            ),
          ),
          button: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ).toTheme,
      themeMode: ThemeMode.dark,
      // UNKNOWN ROUTE FALLBACK SCREEN
      unknownRoute: GetPage(
        name: Routes.unknown,
        page: () => const UnknownScreen(),
      ),
    );

    // MATERIAL APP
    return FlutterWebFrame(
      backgroundColor: kBackgroundColor,
      maximumSize: const Size(1500, 800),
      builder: (context) => app,
    );
  }
}
