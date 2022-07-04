import 'package:flutter/material.dart';
import 'package:liso/core/utils/console.dart';
import 'package:liso/core/utils/ui_utils.dart';

import '../../core/utils/globals.dart';
import '../../resources/resources.dart';
import '../main/main_screen.controller.dart';

class MainAppBar extends StatelessWidget
    with ConsoleMixin
    implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size(0, Utils.isSmallScreen ? 60 : 80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: kBackgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: Utils.isSmallScreen ? 10 : 40),
              Image.asset(Images.logo, width: Utils.isSmallScreen ? 30 : 50),
              const SizedBox(width: 10),
              Text(
                kName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Utils.isSmallScreen ? 25 : 35,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: MainScreenController.to.scrollToDownload,
            child: const Text('Download'),
          ),
        ],
      ),
    );
  }
}
