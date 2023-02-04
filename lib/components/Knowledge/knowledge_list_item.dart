import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_box/const/colors.dart';

class KnowledgeListItem extends StatelessWidget {
  final int number;
  final String title;
  final String videoUrl;
  final VoidCallback? setFavoriteVideo;

  const KnowledgeListItem({
    required this.title,
    required this.number,
    required this.videoUrl,
    required this.setFavoriteVideo,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: number % 2 == 0 ? knowledgeListItemColor : Colors.white,
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () => _launchURL(
                  url: videoUrl
              ),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(
                color: Colors.black,
                width: 1.0,
              )
            ),
            onPressed: setFavoriteVideo,
            child: Text(
                "해제",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.w700
              ),
            )
          )
        ],
      ),
    );
  }

  void _launchURL({required String url}) async {
    await launchUrl(Uri.parse(url));
  }
}
