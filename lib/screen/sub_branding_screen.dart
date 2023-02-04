import 'package:flutter/material.dart';
import 'package:video_box/components/SubBranding/sub_branding_master.dart';
import 'package:video_box/layout/pop_content_layout.dart';

class SubBrandingScreen extends StatelessWidget {
  const SubBrandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PopContentLayout(
      title: 'Sub Branding',
      child: SubBrandingMaster(),
    );
  }
}
