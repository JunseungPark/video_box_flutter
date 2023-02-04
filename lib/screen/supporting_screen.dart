import 'package:flutter/material.dart';
import 'package:video_box/components/Supporting/supporting_master.dart';
import 'package:video_box/layout/pop_content_layout.dart';

class SupportingScreen extends StatelessWidget {
  const SupportingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PopContentLayout(
      title: 'Supporting',
      child: SupportingMaster(),
    );
  }
}
