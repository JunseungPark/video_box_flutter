import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_box/components/main_appbar.dart';
import 'package:video_box/components/main_master.dart';
import 'package:video_box/components/main_menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    return SafeArea (
      child: Scaffold(
          primary: true,
          appBar: MainAppBar(),
          extendBodyBehindAppBar: true,
          endDrawer : MainMenuDrawer(),
          body: Column(
            children: [
              MainMaster()
            ],
          )
      ),
    );
  }
}
