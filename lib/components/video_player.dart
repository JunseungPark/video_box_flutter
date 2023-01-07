import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_box/utils/video.dart';

class VideoPlayer extends StatelessWidget {
  final String videoUrl;
  final int isCheked;
  final numbering;
  final VoidCallback setIsLiked;

  const VideoPlayer({
    required this.videoUrl,
    required this.isCheked,
    required this.numbering,
    required this.setIsLiked,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 230.0.h,
          maxWidth: 350.0.w,
      ),
      child: Container(
          width: 350.0.w,
          padding: EdgeInsets.only(top: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                  child: GestureDetector (
                    onTap: () => _launchURL(
                        url: videoUrl
                    ),
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                        Video.getThumbnail(videoId: Video.convertUrlToId(videoUrl) ?? ""),
                        errorBuilder: (context, error, stackTrace) {
                          return Image(
                              image: AssetImage('assets/image/logo_4x.png')
                          );
                        },
                      ),
                    ),
                  )
              ),
              Positioned(
                top: 195.0.h,
                left: 280.0.w,
                child: GestureDetector(
                  onTap: setIsLiked,
                  child: Container(
                    width: 55.0.w,
                    height: 55.0.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: (isCheked == 1)
                        ? Image.asset('assets/image/is_liked_s.png', width: 28.0.w,) :
                          Image.asset('assets/image/is_unliked_s.png', width: 28.0.w,),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }

  void _launchURL({required String url}) async {
    await launchUrl(Uri.parse(url));
  }
}
