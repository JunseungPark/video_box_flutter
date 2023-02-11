import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/const/colors.dart';
import 'package:video_box/screen/knowledge_screen.dart';
import 'package:video_box/screen/sub_branding_screen.dart';
import 'package:video_box/screen/supporting_screen.dart';

class MainMenuDrawer extends StatelessWidget {
  const MainMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFA68CF7),
                    Color(0xFF80A4E6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(10, 3), // changes position of shadow
                  ),
                ]
            ),
            height: 70.0.h,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      Image(
                        width: 60.0.w,
                        height: 26.0.h,
                        image: AssetImage('assets/image/drawer_menu.png')
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  child: IconButton(
                    icon: Icon(
                        size: 30.0,
                        color: Colors.white,
                        IconData(0xe16a, fontFamily: 'MaterialIcons')
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 180.0.w,
            height: 29.0.h,
            margin: EdgeInsets.only(top:25.0.h, left: 8.0.w, right: 8.0.w),
            padding: EdgeInsets.only(left: 5.0.w),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFA68CF7),
                    Color(0xFF80A4E6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KnowledgeScreen()));
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.view_in_ar,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                        'Knowledge Storage',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 180.0.w,
            height: 29.0.h,
            margin: EdgeInsets.only(top:25.0.h, left: 8.0.w, right: 8.0.w),
            padding: EdgeInsets.only(left: 5.0.w),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFA68CF7),
                    Color(0xFF80A4E6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubBrandingScreen()));
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.diversity_1,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                        'Sub Branding',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 180.0.w,
            height: 29.0.h,
            margin: EdgeInsets.only(top:25.0.h, left: 8.0.w, right: 8.0.w),
            padding: EdgeInsets.only(left: 5.0.w),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFA68CF7),
                    Color(0xFF80A4E6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SupportingScreen()));
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                        'Supproting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      width: 65.0.w,
                      image: AssetImage('assets/image/drawer_company_logo.png')
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.h),
                    child: Text(
                        'Knowledge is Power',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF2B0D97)
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0.h),
                    child: Text(
                        'Our project will continue until you pick up everything you are curious about! Forever!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: Color(0xFF866AEB)
                        )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
