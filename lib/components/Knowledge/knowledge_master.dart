import 'package:flutter/material.dart';
import 'package:video_box/components/Knowledge/knowledge_container.dart';

class KnowledgeMaster extends StatelessWidget {
  const KnowledgeMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "저장 된 지식들!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            KnowledgeContainer()
          ],
        ),
      ),
    );
  }
}
