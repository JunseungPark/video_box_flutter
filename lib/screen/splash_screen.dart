import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/screen/home_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  int splashtime = 3;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context){
            return HomeScreen();
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double? height = MediaQuery.of(context!).size.height * 0.2;
    print(height);
    return Scaffold(
        body:Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF624EEA),
                  Color(0xFF6CBAE5),
                  ],
              )
            ),
            alignment: Alignment.center,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children:<Widget>[
                  Container(
                    padding: EdgeInsets.only(top: height, bottom: 30.0, left: 30.0),
                    child:SizedBox(
                        height:200.0,width:250.0,
                        child:Image.asset("assets/image/splash_image.png")
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Knowledge',
                          style: TextStyle(
                            fontSize: 30.0.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          )
                        ),
                        Text(
                          'Storage',
                          style: TextStyle(
                            fontSize: 30.0.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          )
                        ),
                      ],
                    )
                  ),
                  Container(
                    child:Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: SizedBox(
                          height:70,width:70,
                          child:Image.asset("assets/image/splash_logo.png")
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}