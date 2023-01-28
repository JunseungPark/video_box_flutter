import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:video_box/components/main_info_video_list.dart';
import 'package:video_box/database/video_database.dart';

class MainInfo extends StatefulWidget {
  const MainInfo({
    Key? key}) : super(key: key);

  @override
  State<MainInfo> createState() => _MainInfoState();
}

class _MainInfoState extends State<MainInfo> {
  String Date = DateFormat('yyyy. MM. dd a').format(DateTime.now());
  String hour = DateFormat('HH:mm').format(DateTime.now());
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
  }

  void _update() {
    setState(() {
      Date = DateFormat('yyyy. MM. dd a').format(DateTime.now());
      hour = DateFormat('HH:mm').format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 7.0.sp,
      color: Colors.white
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              "assets/image/main_info_background4x.png",
          ),
        ),
      ),
      alignment: Alignment.center,
      height: 219.h,
      child: Padding(
        padding: EdgeInsets.only(top:20.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            Container(
              height: 155.0.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Container(
                    padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
                    width: 220.0.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180.0.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "당신이 궁금한 잡학다식 이야기",
                                style: textStyle.copyWith(
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Text(
                                "유튜브속 궁금했던 이야기에 하트를 눌러 지식 창고 보관하고 언제든지 꺼내봐요!",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 25.h,
                              child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                minimumSize: Size(95.0.w, 25.0.h), //////// HERE
                              ),
                                onPressed: () {
                                  // 이동
                                },
                                child: Text(
                                    '조선사 모음',
                                  style: textStyle.copyWith(
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            Container(
                              height: 25.0.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  minimumSize: Size(95.0.w, 25.0.h), //////// HERE
                                ),
                                onPressed: () {},
                                child: Text(
                                  '주짓수',
                                  style: textStyle.copyWith(
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 110.w,
                    height: 90.0.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "지식의 창고",
                          style: textStyle.copyWith(
                              fontSize: 19.0.sp,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          hour,
                          style: textStyle.copyWith(
                              fontSize: 32.0.sp,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          Date,
                          style: textStyle.copyWith(
                              fontSize: 10.0.sp,
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0.h),
              height: 18.0.h,
              child: StreamBuilder<List<VideoContentData>>(
                  stream: GetIt.I<LocalDataBase>().watchVideoContentList(),
                  builder: (context, snapshot) {
                    if(!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if(snapshot.hasData && snapshot.data!.isEmpty) {
                      return Center(
                        child: Text('데이터가 없습니다'),
                      );
                    }
                    return MainInfoVideoList(
                      videoContentList: snapshot.data!,
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
