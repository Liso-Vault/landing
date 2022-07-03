import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Test Button'),
          ),
        ],
      ),
    );
  }
}
