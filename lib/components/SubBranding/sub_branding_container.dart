import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/components/SubBranding/sub_branding_list_item.dart';

class SubBrandingContainer extends StatelessWidget {
  const SubBrandingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SubBrandingListItem(
            imagePath: "assets/image/jiujitsu.jpg",
          ),
          SubBrandingListItem(
            imagePath: "assets/image/books.jpg",
          ),
          SubBrandingListItem(
            imagePath: "assets/image/history.jpg",
          )
        ],
      ),
    );
  }
}
