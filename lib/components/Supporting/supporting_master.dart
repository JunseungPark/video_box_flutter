import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/components/Supporting/supporting_container.dart';

class SupportingMaster extends StatelessWidget {
  const SupportingMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '자신의 App을 만들어보세요!',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'YPS는 사소한 아이디어로 만들어지는 스터디의 결과물입니다.'
              '당신만을 위한 App을 만들고 싶으시면 언제든 아래의 이메일로 연락주세요!'
              'Email:dbsqkrthd@gmail.com',
              style: TextStyle(
                fontSize: 10.26.sp,
                fontWeight: FontWeight.w100
              ),
            ),
            SupportingContainer()
          ],
        ),
      ),
    );
  }
}
