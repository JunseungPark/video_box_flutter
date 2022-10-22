import 'package:flutter/material.dart';
import 'package:video_box/components/main_appbar.dart';
import 'package:video_box/components/main_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainAppBar(),
          MainInfo()
        ],
      )
    );
  }
}
