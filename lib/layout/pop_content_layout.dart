import 'package:flutter/material.dart';
import 'package:video_box/components/pop_content_appbar.dart';

class PopContentLayout extends StatelessWidget {
  final String title;
  final Widget child;
  const PopContentLayout({
    required this.title,
    required this.child,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PopContentAppbar(
        title: title,
      ),
      body: Column(
        children: [
          child
        ],
      ),
    );
  }
}
