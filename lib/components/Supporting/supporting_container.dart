import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportingContainer extends StatelessWidget {
  const SupportingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _launchURL(
                  url: 'https://paypal.me/younparksong?country.x=KR&locale.x=ko_KR'
                );
              },
              child: SizedBox(
                width: 208.0.w,
                height: 208.0.h,
                child: Image.asset('assets/image/paypal.jpg'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child:Padding(
                padding: EdgeInsets.only(top: 75.h),
                child: Column(
                  children: [
                    Text(
                      'YPS에 후원을 해주세요!',
                      style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '페이팔로 후원이 가능합니다!',
                        style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      '버튼을 누르시면 YPS의 서포팅 페이지로 자동 이동됩니다.',
                      style: TextStyle(
                          fontSize: 10.0.sp,
                          fontWeight: FontWeight.w300
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

void _launchURL({required String url}) async {
  await launchUrl(Uri.parse(url));
}
