import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubBrandingListItem extends StatelessWidget {
  final String imagePath;

  const SubBrandingListItem({
    required this.imagePath,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0.h),
      child: Image.asset(
          imagePath
      ),
    );
  }
}
