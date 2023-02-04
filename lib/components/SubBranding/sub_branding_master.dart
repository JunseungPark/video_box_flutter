import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/components/SubBranding/sub_branding_container.dart';

class SubBrandingMaster extends StatelessWidget {
  const SubBrandingMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'YPS의 자매품을 만나보세요!',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'YPS의 제품은 계속 출시 될 예정입니다!',
              style: TextStyle(fontSize: 10.26.sp),
            ),
            SubBrandingContainer()
          ],
        ),
      ),
    );
  }
}
